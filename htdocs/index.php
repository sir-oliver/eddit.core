<?php
// define('CE_FORCE_DEBUG',true);     // force debug output
// define('CE_SHOW_DEBUGGER',true);      // show request parameters, session and DB queries

require_once('eddit/header.php');
require_once('eddit/eddit.php');

EDDIT::init();

EDDIT::login('clickedit');

EDDIT::setupCMS();

EDDIT::renderCMS();

require_once('eddit/footer.php');
?>
