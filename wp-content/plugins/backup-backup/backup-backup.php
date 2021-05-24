<?php

  /**
   * Plugin Name: Backup Migration
   * Description: Most sophisticated backup & migration plugin for WordPress
   *      Author: Migrate
   *  Author URI: https://backupbliss.com/
   *  Plugin URI: https://backupbliss.com
   * Text Domain: backup-backup
   * Domain Path: /languages
   *     Version: 1.1.0
   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

  // Exit on direct access
  if (!defined('ABSPATH')) exit;

  // Default namespace
  use BMI\Plugin AS BMI;

  // Not dynamic constants
  if (!defined('BMI_DEBUG')) {
    define('BMI_DEBUG', false);
  }
  if (!defined('BMI_VERSION')) {
    define('BMI_VERSION', '1.1.0');
  }
  if (!defined('BMI_ROOT_DIR')) {
    define('BMI_ROOT_DIR', __DIR__);
  }
  if (!defined('BMI_ROOT_FILE')) {
    define('BMI_ROOT_FILE', __FILE__);
  }
  if (!defined('BMI_INCLUDES')) {
    define('BMI_INCLUDES', BMI_ROOT_DIR . DIRECTORY_SEPARATOR . 'includes');
  }

  // Activation hook
  register_activation_hook(BMI_ROOT_FILE, function () {
    require_once BMI_INCLUDES . '/activation.php';
    BMI\bmi_activate_plugin();
  });

  // Fixes for some cases
  require_once BMI_INCLUDES . '/compatibility.php';

  // Opt-in sub plugin
  require_once BMI_INCLUDES . '/analyst.php';

  // Load plugin after all
  add_action('plugins_loaded', function () {

    // Global plugin variables
    require_once BMI_ROOT_DIR . '/includes/constants.php';

    // Initialize backup-migration
    if (!class_exists('Backup_Migration_Plugin')) {

      // Require initializator
      require_once BMI_ROOT_DIR . '/includes/initializer.php';

      // Initialize entire plugin
      $bmi_instance = new BMI\Backup_Migration_Plugin();
      $bmi_instance->initialize();

    }

  }, 15);