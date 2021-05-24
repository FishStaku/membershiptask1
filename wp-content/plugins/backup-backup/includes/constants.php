<?php

  // Namespace
  namespace BMI\Plugin;

  // Exit on direct access
  if (!defined('ABSPATH')) {
    exit;
  }

  // Plugin includes
  if (!defined('BMI_AUTHOR_URI')) {
    define('BMI_AUTHOR_URI', 'https://backupbliss.com/');
  }
  if (!defined('BMI_BACKUPS_DEFAULT')) {
    define('BMI_BACKUPS_DEFAULT', WP_CONTENT_DIR . DIRECTORY_SEPARATOR . 'backup-migration');
  }
  if (!defined('BMI_CONFIG_DEFAULT')) {
    define('BMI_CONFIG_DEFAULT', BMI_INCLUDES . DIRECTORY_SEPARATOR . 'htaccess' . DIRECTORY_SEPARATOR . 'default.json');
  }
  if (!defined('BMI_CONFIG_PATH')) {
    define('BMI_CONFIG_PATH', WP_CONTENT_DIR . DIRECTORY_SEPARATOR . 'backup-migration' . DIRECTORY_SEPARATOR . 'config.json');
  }
  if (!defined('BMI_CONFIG_DIR')) {
    define('BMI_CONFIG_DIR', dirname(BMI_CONFIG_PATH));
  }
  if (!defined('BMI_DB_MAX_ROWS_PER_QUERY')) {
    define('BMI_DB_MAX_ROWS_PER_QUERY', 2500);
  }
  if (!defined('BMI_REV')) {
    define('BMI_REV', 2);
  }

  // Load configuration
  require_once BMI_INCLUDES . DIRECTORY_SEPARATOR . 'config.php';

  // Default constants
  if (!defined('BMI_LEGACY_VERSION')) {
    $legacy = (Dashboard\bmi_get_config('OTHER:EXPERIMENT:TIMEOUT') == 'true' || Dashboard\bmi_get_config('OTHER:EXPERIMENT:TIMEOUT') === true) ? false : true;
    define('BMI_LEGACY_VERSION', $legacy);
  }
  if (!defined('BMI_LEGACY_HARD_VERSION')) {
    $legacy_hard = (Dashboard\bmi_get_config('OTHER:EXPERIMENT:TIMEOUT:HARD') == 'true' || Dashboard\bmi_get_config('OTHER:EXPERIMENT:TIMEOUT:HARD') === true) ? false : true;
    define('BMI_LEGACY_HARD_VERSION', $legacy_hard);
  }
  if (!defined('BMI_FUNCTION_NORMAL')) {
    if (BMI_LEGACY_VERSION && BMI_LEGACY_HARD_VERSION) {
      define('BMI_FUNCTION_NORMAL', true);
    } else {
      define('BMI_FUNCTION_NORMAL', false);
    }
  }
  if (!defined('BMI_ASSETS')) {
    define('BMI_ASSETS', plugin_dir_url(BMI_ROOT_FILE) . 'admin');
  }
  if (!defined('BMI_BACKUPS')) {
    define('BMI_BACKUPS', WP_CONTENT_DIR . DIRECTORY_SEPARATOR . 'backup-migration' . DIRECTORY_SEPARATOR . 'backups');
  }

  // Fill folders if not removed (security)
  if (!file_exists(BMI_BACKUPS)) {
    mkdir(BMI_BACKUPS, 0755, true);
  }
  if (!file_exists(BMI_CONFIG_DIR)) {
    mkdir(BMI_CONFIG_DIR, 0755, true);
  }
  if (!file_exists(BMI_CONFIG_PATH)) {
    touch(BMI_CONFIG_PATH);
  }

  // Secure config and logs
  if (!file_exists(BMI_CONFIG_DIR . DIRECTORY_SEPARATOR . 'index.php')) {
    touch(BMI_CONFIG_DIR . DIRECTORY_SEPARATOR . 'index.php');
  }
  if (!file_exists(BMI_CONFIG_DIR . DIRECTORY_SEPARATOR . 'index.html')) {
    touch(BMI_CONFIG_DIR . DIRECTORY_SEPARATOR . 'index.html');
  }
  if (!file_exists(BMI_CONFIG_DIR . DIRECTORY_SEPARATOR . '.htaccess')) {
    copy(BMI_INCLUDES . DIRECTORY_SEPARATOR . 'htaccess' . DIRECTORY_SEPARATOR . '.htaccess', BMI_CONFIG_DIR . DIRECTORY_SEPARATOR . '.htaccess');
  }

  // Secure backups (if in backup dir)
  if (!file_exists(BMI_BACKUPS . DIRECTORY_SEPARATOR . 'index.php')) {
    touch(BMI_BACKUPS . DIRECTORY_SEPARATOR . 'index.php');
  }
  if (!file_exists(BMI_BACKUPS . DIRECTORY_SEPARATOR . 'index.html')) {
    touch(BMI_BACKUPS . DIRECTORY_SEPARATOR . 'index.html');
  }
  if (!file_exists(BMI_BACKUPS . DIRECTORY_SEPARATOR . '.htaccess')) {
    copy(BMI_INCLUDES . DIRECTORY_SEPARATOR . 'htaccess' . DIRECTORY_SEPARATOR . '.htaccess', BMI_BACKUPS . DIRECTORY_SEPARATOR . '.htaccess');
  }

  // Tooltips
  if (!defined('BMI_PREMIUM_TOOLTIP')) {
    $tooltip = sanitize_text_field(__("This feature isn’t ready yet in the premium plugin, that’s why you can buy it at a <b>big discount</b>", 'backup-backup'));
    $tooltip .= '&nbsp;– <a href="' . BMI_AUTHOR_URI . '" target="_blank">' . sanitize_text_field(__('learn more', 'backup-backup')) . '</a>.';
    define('BMI_PREMIUM_TOOLTIP', $tooltip);
  }
  if (!defined('BMI_COMMING_SOON_TUNED')) {
    $cmsx = '<b><a href="' . BMI_AUTHOR_URI . '" target="_blank" class="link-white">' . sanitize_text_field(__('Order it now at a big discount!', 'backup-backup')) . '</a></b>';
    define('BMI_COMMING_SOON_TUNED', $cmsx);
  }
  if (!defined('BMI_COMMING_SOON_PRO')) {
    $cmsv = '<p class="f16">';
    $cmsv .= sanitize_text_field(__("Coming soon in the Premium Plugin", 'backup-backup'));
    $cmsv .= '&nbsp;–&nbsp;' . BMI_COMMING_SOON_TUNED;
    $cmsv .= '</p>';
    define('BMI_COMMING_SOON_PRO', $cmsv);
  }
  if (!defined('BMI_COMMING_SOON_FREE')) {
    $cmsne = '<p class="f16">';
    $cmsne .= __("Coming soon also in the free plugin", 'backup-backup') . ' – <b>' . __("stay tuned!", 'backup-backup') . '</b>';
    $cmsne .= '</p>';
    define('BMI_COMMING_SOON_FREE', $cmsne);
  }
  if (!defined('BMI_CHAT_SUPPORT_URL')) {
    define('BMI_CHAT_SUPPORT_URL', '//code.jivosite.com/widget/qli4YP0snZ');
  }
