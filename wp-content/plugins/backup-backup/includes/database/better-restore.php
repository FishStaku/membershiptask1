<?php

/**
 * Author: Mikołaj `iClyde` Chodorowski
 * Contact: kontakt@iclyde.pl
 * Package: Backup Migration – WP Plugin
 */

// Namespace
namespace BMI\Plugin\Database;

// Use
use BMI\Plugin\BMI_Logger AS Logger;
use BMI\Plugin\Progress\BMI_ZipProgress AS Progress;

// Exit on direct access
if (!defined('ABSPATH')) exit;

global $bmi_last_seek, $bmi_last_file;
// register_shutdown_function(function () {
//
//   echo $GLOBALS['bmi_last_file'] . ' - ' . $GLOBALS['bmi_last_seek'];
//
// });

/**
 * Database importing
 * Main Class, requires $wpdb
 */
class BMI_Database_Importer {

  /**
   * Private local variables
   */
  private $files = [];

  /**
   * __construct - Initialization and logger resolver
   *
   * @return self
   */
  function __construct($storage, $total_queries, $old_abspath, $old_domain, $new_domain, &$logger) {

    /**
     * WP Global Database variable
     */
    global $wpdb;
    $this->wpdb = &$wpdb;

    /**
     * Logger of BMI core
     */
    $this->logger = &$logger;

    /**
     * Storage directory
     */
    // $this->storage = trailingslashit(__DIR__) . 'data';
    $this->storage = $storage;
    $this->total_queries = intval($total_queries);

    /**
     * Domain(s) configuration
     * ? - All cases that domain can be represented in the database
     */
    $this->source_domain = untrailingslashit($old_domain);
    $this->new_domain = untrailingslashit($new_domain); // untrailingslashit(home_url());
    $this->json_source_domain = trim(json_encode($this->source_domain), '"');
    $this->json_new_domain = trim(json_encode($this->new_domain), '"');
    $this->no_protocol_source_domain = ltrim(ltrim($this->source_domain, "https://"), "http://");
    $this->no_protocol_new_domain = ltrim(ltrim($this->new_domain, "https://"), "http://");
    $this->json_no_protocol_source_domain = ltrim(ltrim($this->json_source_domain, "https:\/\/"), "http:\/\/");
    $this->json_no_protocol_new_domain = ltrim(ltrim($this->json_new_domain, "https:\/\/"), "http:\/\/");

    $this->source_abs = untrailingslashit($old_abspath);
    $this->new_abs = untrailingslashit(ABSPATH);
    $this->json_source_abs = trim(json_encode($this->source_abs), '"');
    $this->json_new_abs = trim(json_encode($this->new_abs), '"');

    $this->logger->log("Memory usage after initialization: " . (memory_get_usage() / 1024 / 1024) . " MB", 'INFO');
    $this->xi = 0;
    $this->current_file = '';
    $this->init_start = microtime(true);
    $this->last_finish = $this->init_start;
    $this->table_names_alter = [];

    @ini_set('memory_limit', '-1');
    if (class_exists('mysqli') || class_exists('\mysqli')) {
      $this->owndb = true;
      $this->db = new \mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
      if ($this->db->connect_error) $this->owndb = false;
      else $this->db->query('SET foreign_key_checks = 0;');
    } else {
      $this->owndb = false;
    }

    // set_error_handler(function($errno, $errstr, $errfile, $errline) {

      // if ($errno === '8' || $errno === 8 || $errno === E_NOTICE) {
      //   throw new \ErrorException($errstr, 0, $errno, $errfile, $errline);
      //   return;
      // }

      // error_log($errno .' '. $errstr .' '. $errfile .':'. $errline);
      // throw new \ErrorException($errstr, 0, $errno, $errfile, $errline);

    // });

  }

  /**
   * import - Import initializer
   *
   * @return {bool} true on success false on fail
   */
  public function import() {

    $this->logger->log("Loading file list...", 'INFO');
    $this->load_file_list();
    $this->logger->log("Memory usage after loading file list: " . (memory_get_usage() / 1024 / 1024) . " MB", 'INFO');

    $this->logger->log("Restoring tables using temporary name...", 'INFO');
    $this->restore_tables();

    // Mark those as finished
    $GLOBALS['bmi_last_file'] = false;
    $GLOBALS['bmi_last_seek'] = false;

    $this->logger->log("Memory usage after loading file list: " . (memory_get_usage() / 1024 / 1024) . " MB", 'INFO');
    $from_start = number_format(microtime(true) - $this->init_start, 4);
    $this->logger->log("Total time to insert $this->xi queries took $from_start seconds.", 'INFO');

  }

  /**
   * restore_tables - Line by line reader and query builder
   * It uses path provided in __construct to get the files
   * I.e. it will try to load all .sql files located in the folder
   * Important, those failes have to be generated with better-backup module
   *
   * @return {void}
   */
  private function restore_tables() {

    global $last_seek, $last_file;
    foreach ($this->files as $file_index => $path) {

      $GLOBALS['bmi_last_file'] = $path;
      $this->current_file = $path;
      $file = new \SplFileObject($path);
      $file->seek($file->getSize());
      $total_lines = $file->key() + 1;

      $last_real_table_name = null;
      $custom_var_started = false;
      $values_started = false;
      $query_ended = false;
      $query = '';

      for ($i = 0; $i < $total_lines; ++$i) {

        // Set the pointer
        $GLOBALS['bmi_last_seek'] = $i;
        $file->seek($i);

        // Get the line
        $line = trim($file->current());

        // Find our declaractions
        if ($line == ltrim("\/* QUERY START */", '\\')) $query_ended = false;
        elseif ($line == ltrim("\/* CUSTOM VARS START */", '\\')) $custom_var_started = true;
        elseif ($line == ltrim("\/* CUSTOM VARS END */", '\\')) $custom_var_started = false;
        elseif ($line == ltrim("\/* VALUES START */", '\\')) $values_started = true;
        elseif ($line == ltrim("\/* VALUES END */", '\\')) $values_started = false;
        elseif ($line == ltrim("\/* QUERY END */", '\\')) $query_ended = true;
        else {

          if ($custom_var_started === true) {

            $line = rtrim($line, "\n");
            $the_variable = null;
            preg_match("/`(.*)`/i", $line, $the_variable);
            $the_variable = $the_variable[1];

            if (strpos($line, 'REAL_TABLE_NAME') !== false) {
              $this->table_names_alter[$the_variable] = '';
              $last_real_table_name = $the_variable;
            } else if (strpos($line, 'PRE_TABLE_NAME') !== false) {
              $this->table_names_alter[$last_real_table_name] = $the_variable;
            }

          }

          if (strlen($line) > 0 || $values_started === true) {

            $line = rtrim($line, "\n");

            if ($values_started === true && $query_ended != true) {

              if ($this->source_domain != $this->new_domain) {

                $this->line_replace($line);

              }

            }

            $query .= $line;

          }

          if ($query_ended === true) {

            $this->run_query($query);
            $values_started = false;
            $query_ended = false;
            $query = '';

          }

        }

      }

      if (file_exists($path)) @unlink($path);
      $file = null;

    }

    $this->alter_names();
    if ($this->owndb == true) {

      $this->db->close();

    } else {

      $foreign_keys = "SET foreign_key_checks = 1;";
      $this->run_query($foreign_keys);

    }

  }

  /**
   * alter_names - Replaces temporary tables with final name
   *
   * @return {void}
   */
  private function alter_names() {

    foreach ($this->table_names_alter as $final_name => $tmp_name) {

      $sql = "DROP TABLE IF EXISTS `$final_name`;";
      $this->run_query($sql);

      $sql = "ALTER TABLE `$tmp_name` RENAME TO `$final_name`;";
      $this->run_query($sql);

    }

  }

  /**
   * replace_domain_string - Replaces the string recursively
   * It will find all possibilites to replace even the same string multiple times
   *
   * @param  {string} &$string = '' String pointer declarated somewhere else to save memory
   * @return {void} - It modifies the root variable
   */
  private function replace_domain_string(&$string = '', &$replaced = false) {

    $replacement = $this->is_replacable($string);
    if ($replacement !== false) {

      $string = str_replace($replacement[0], $replacement[1], $string);
      $replaced = true;

      if ($this->is_replacable($string) !== false) {
        $replaced = false;
        $this->replace_domain_string($string, $replaced);
      }

    }

  }

  /**
   * iterate_maybe_serial_string - It checks if the serialized thing was nested
   * And makes the serialization for each once again to get the right object
   *
   * @param  {string} &$string String that may be serializable
   * @return {void} It modifies pointer
   */
  private function iterate_maybe_serial_string(&$string) {

    // $serial = $this->is_valid_serialized($string, false);
    if (is_serialized($string)) {

      // $this->iterate_maybe_serial_string($string);
      $string = @unserialize($string);
      $this->iterate_object($string);
      $string = @serialize($string);

    } else {

      $this->iterate_object($string);

    }

  }

  /**
   * is_replacable - Checks if the string is repecable, if it contains the old domain
   *
   * @param  {string} &$string String that can include old domain name
   * @return {void} It modifies pointer
   */
  private function is_replacable(&$string) {

    if (strpos($string, $this->source_domain) !== false) {
      return [$this->source_domain, $this->new_domain];
    }

    if (strpos($string, $this->json_source_domain) !== false) {
      return [$this->json_source_domain, $this->json_new_domain];
    }

    if (strpos($string, $this->no_protocol_source_domain) !== false) {
      return [$this->no_protocol_source_domain, $this->no_protocol_new_domain];
    }

    if (strpos($string, $this->json_no_protocol_source_domain) !== false) {
      return [$this->json_no_protocol_source_domain, $this->json_no_protocol_new_domain];
    }

    if (strpos($string, $this->source_abs) !== false) {
      return [$this->source_abs, $this->new_abs];
    }

    if (strpos($string, $this->json_source_abs) !== false) {
      return [$this->json_source_abs, $this->json_new_abs];
    }

    return false;

  }

  /**
   * check_key - Checks object key
   * It allows to modify object keys in case the domain was used there
   * E.g. some redirect plugins may store it in the database this way
   *
   * @param  {string} $key Object key or normal string
   * @return {string/bool} String if it's replacable bool false if nothing to replace
   */
  private function check_key($key) {

    if ($this->is_replacable($key) !== false) {

      $replaced = false;
      $this->replace_domain_string($key, $replaced);
      return $key;

    } else {

      return false;

    }

  }

  /**
   * @RECURSIVE MEMORY EATER
   * iterate_object - Recursive iterator of object/array
   * It checks every value and key and replaces it where needed
   *
   * @param  {?object/?mixed} &$object Mixed type, it will detect correct object and return no changed if wrong
   * @return {void} It modifies object or does nothing on wrong source
   */
  private function iterate_object(&$object) {

    if (is_string($object) && is_serialized($object)) {

      $this->iterate_maybe_serial_string($object);
      return;

    }

    if (!(is_object($object) || is_array($object))) {

      return;

    }

    foreach ($object as $key => $value) {

      $key_match = $this->check_key($key);
      if ($key_match !== false) {

        if (is_object($object)) {

          $object->$key_match = $object->$key;
          unset($object->$key);

        } elseif (is_array($object)) {

          $object[$key_match] = $object[$key];
          unset($object[$key]);

        }

        $key = $key_match;

      }

      if (($value && !is_string($value)) && (is_object($value) || is_array($value))) {

        $this->iterate_object($value);
        if (is_object($object)) $object->$key = $value;
        elseif (is_array($object)) $object[$key] = $value;

      } else {

        // $subserial = $this->is_valid_serialized($value, false);
        // $subserial['valid'] === true
        if (is_serialized($value)) {

          $this->iterate_object($value);
          if (is_object($object)) @$object->$key = $value;
          elseif (is_array($object)) $object[$key] = $value;

        } else {

          if (is_array($value) || is_object($value)) {

            $this->iterate_object($value);
            if (is_object($object)) @($object->$key = $value);
            elseif (is_array($object)) $object[$key] = $value;

          } else {

            // Final string to replace (if string / else ignore)
            if (gettype($value) === 'string') {

              $modified = false;
              $this->replace_domain_string($value, $modified);

              if ($modified) {
                if (is_object($object)) @($object->$key = $value);
                elseif (is_array($object)) $object[$key] = $value;
              }

            }

          }

        }

      }

    }

  }

  /**
   * line_replace - Value replacer before inserting to database
   *
   * @param  {string} &$line = '' Pointer to file line which should be replaced if needed
   * @return {void} It modifies pointer
   */
  private function line_replace(&$line = '') {

    // Remove wpdb prepare slashes to make sure the serialized data is correct
    $copy = $line;
    $line = stripcslashes($line);
    $line = str_replace('\0', '', $line);

    $serial = $this->is_valid_serialized($line);

    if ($serial['valid'] === true) {

      // Copy no needed here slashes will be added by wpdb
      unset($copy);

      // Iterate entire object replace keys and values
      $this->iterate_object($line);

      // Serialize it again as it was serialized before
      $line = serialize($line);

      // Make the string SQL friendly, as it was before
      if ($serial['quotes']) $line = $this->wpdb->prepare('%s', $line);
      if ($serial['comma']) $line .= ',';

    } else {

      // Make sure the line is exactly the same as in file
      $line = $copy;

      // Unset copy to free space
      unset($copy);

      // Find and replace domain
      $replaced = false;
      $this->replace_domain_string($line, $replaced);

    }

  }

  /**
   * run_query - Query runner, it runs the final query after built and replacements
   *
   * @param  {string} &$query Pointer to small or huge query
   * @return {void} Returns nothing, and the &$query is not removed here
   *
   * Notice: Please unset($query) after this method otherwise we will lose memory
   */
  private function run_query(&$query) {

    $this->xi++;
    if ($this->owndb === true) $this->db->query($query);
    else $this->wpdb->query($query);

    if ($this->xi % 5 == 0) {

      $from_start = number_format(microtime(true) - $this->init_start, 4);
      $filename = basename($this->current_file);

      $from_last = number_format(microtime(true) - $this->last_finish, 4);
      $this->last_finish = microtime(true);

      $queries_so_far = $this->xi;
      $queries_total = $this->total_queries;
      $queries_progress = number_format(($queries_so_far / $queries_total) * 100, 2);

      $this->logger->progress(50 + ($queries_progress / 2));
      $queries_progress .= "%";

      $usg = number_format(memory_get_usage() / 1024 / 1024, 4);

      $this->logger->log("Finished $queries_so_far/$queries_total ($queries_progress) queries, time from last milestone $from_last s, from start $from_start s (current file: $filename) (Usage: $usg MB)", 'INFO');

    }

  }

  /**
   * load_file_list - Loads files to restore
   *
   * @return {array}  list list of restorable files
   */
  private function load_file_list() {

    $files = scandir($this->storage);
    foreach ($files as $index => $filename) {

      if (in_array($filename, ['.', '..'])) continue;
      if (substr($filename, -4) != '.sql') continue;

      $this->files[] = trailingslashit($this->storage) . $filename;

    }

    return $this->files;

  }

  /**
   * is_valid_serialized - Checks if string is serialized and if it's valid serialization
   *
   * @param  {mixed} $data = '' Maybe serialized string
   * @return {array}            If the results is valid, if comma was removed, if quotes were removed
   */
  private function is_valid_serialized(&$data = '', $sql = true) {

    $commaRemoved = false;
    $quotesRemoved = false;

    if ($sql) {

      $length = strlen($data);
      $is_last = $data[$length - 1] == "," ? false : true;

      if (!$is_last) {

        $commaRemoved = true;
        $data = substr($data, 0, -1);

      }

    }

    if (is_numeric($data)) {

      if ($commaRemoved) $data .= ',';
      return ['valid' => false, 'comma' => false, 'quotes' => false];

    }

    if (!is_string($data)) {

      if ($commaRemoved) $data .= ',';
      return ['valid' => false, 'comma' => false, 'quotes' => false];

    }

    if (!$data) {

      if ($commaRemoved) $data .= ',';
      return ['valid' => false, 'comma' => false, 'quotes' => false];

    }

    if ($data[0] == "'") {

      $quotesRemoved = true;
      $data = trim($data, "'");

    }

    if (is_serialized($data)) {

      $unserialized = @unserialize($data, ['allowed_classes' => false]);

    } else {

      $unserialized = false;

    }

    $is_valid = ($data == 'b:0;' || ($unserialized !== false)) ? true : false;

    if (!$is_valid) {

      if ($quotesRemoved) {
        $data = $this->wpdb->prepare('%s', $data);
      }

      if ($commaRemoved) $data .= ',';

    } else {

      $data = $unserialized;
      unset($unserialized);

    }

    return ['valid' => $is_valid, 'comma' => $commaRemoved, 'quotes' => $quotesRemoved];

  }

}
