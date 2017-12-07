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

/**
 *  Google Structured Data component installer
 */
class Com_GSDInstallerScript extends Com_GSDInstallerScriptHelper
{
	public $name = 'GSD';
	public $alias = 'gsd';
	public $extension_type = 'component';

	/**
	 *  Runs after current extension installation
	 *
	 *  @return  void
	 */
	public function onAfterInstall()
	{
		$this->loadFramework();

		// Make sure we support the current version
		$version = \NRFramework\Functions::getExtensionVersion('plg_system_gsd');
		if ($version && version_compare($version, '3.0', '<='))
		{
			require_once $this->getMainFolder() . '/helpers/migrator.php';
			$migrator = new GSDMigrator();
			$migrator->start();
		}
	}
}

 