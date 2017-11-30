<?php
/**
 * @package         ReReplacer
 * @version         8.2.2
 * 
 * @author          Peter van Westen <info@regularlabs.com>
 * @link            http://www.regularlabs.com
 * @copyright       Copyright © 2017 Regular Labs All Rights Reserved
 * @license         http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */

defined('_JEXEC') or die;

require_once __DIR__ . '/script.install.helper.php';

class PlgSystemReReplacerInstallerScript extends PlgSystemReReplacerInstallerScriptHelper
{
	public $name           = 'REREPLACER';
	public $alias          = 'rereplacer';
	public $extension_type = 'plugin';

	public function uninstall($adapter)
	{
		$this->uninstallComponent($this->extname);
	}
}
