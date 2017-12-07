<?php

/**
 * @package         Google Structured Data
 * @version         3.1.1 Free
 *
 * @author          Tassos Marinos <info@tassos.gr>
 * @link            http://www.tassos.gr
 * @copyright       Copyright © 2017 Tassos Marinos All Rights Reserved
 * @license         GNU GPLv3 <http://www.gnu.org/licenses/gpl.html> or later
 */

defined('_JEXEC') or die;

require_once __DIR__ . '/script.install.helper.php';

class PlgGSDContentInstallerScript extends PlgGSDContentInstallerScriptHelper
{
    public $alias = 'content';
    public $extension_type = 'plugin';
    public $plugin_folder = "gsd";
    public $show_message = false;
}