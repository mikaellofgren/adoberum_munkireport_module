# adoberum_munkireport_module
Module for Munkireport for collect Adobe Remote Updater Logfile.

Installation:
- Place adoberum module in Munkireport-app-modules
- add adoberum to munkireport-config.php
- //$conf['modules'] = array();
$conf['modules'] = array('adoberum')

- Check that module is loaded:
http://your.munkireport.site/index.php?/module/adoberum

Place adoberum-adoberum_tab.php in Munkireport-app-views-client-

Edit Munkireport-app-views-client-client_detail.php:
// Add custom tabs
$tab_list = array_merge($tab_list, conf('client_tabs', array('adoberum-tab' => array('view' => 'client/adoberum_tab', 'i18n' => 'client.tab.adoberum'),)));

Edit: Munkireport-assets/locales/en.json
and add this line in the list
"client": {
"adoberum": "Adobe Rum",




