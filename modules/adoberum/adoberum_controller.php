<?php 

/**
 * Adoberum, report controller class
 *
 * @package munkireport
 * @author Mikael Lofgren
 **/
class adoberum_controller extends Module_controller
{
    function __construct()
    {
        $this->module_path = dirname(__FILE__);
    }

    /**
     * Default method
     *
     * @author Mikael Lofgren
     **/
    function index()
    {
        echo "You've loaded the adoberum report module!";
    }

} // END class adoberum_controller