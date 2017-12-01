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

// Do not instantiate plugin on install pages
// to prevent installation/update breaking because of potential breaking changes
if (
	in_array(JFactory::getApplication()->input->get('option'), ['com_installer', 'com_regularlabsmanager'])
	&& JFactory::getApplication()->input->get('action') != ''
)
{
	return;
}

if ( ! is_file(__DIR__ . '/vendor/autoload.php'))
{
	return;
}

require_once __DIR__ . '/vendor/autoload.php';

use RegularLabs\Plugin\System\ReReplacer\Plugin;

/**
 * Plugin that replaces stuff
 */
class PlgSystemReReplacer extends Plugin
{
	public $_alias       = 'rereplacer';
	public $_title       = 'REREPLACER';
	public $_lang_prefix = 'RR';

	public $_only_in_html    = false;
	public $_page_types      = ['html', 'feed', 'pdf', 'ajax', 'json', 'raw'];
	public $_enable_in_admin = true;

	public function extraChecks()
	{
		// return if component is not installed
		if ( ! JFile::exists(JPATH_ADMINISTRATOR . '/components/com_rereplacer/models/list.php'))
		{
			return false;
		}

		// don't allow ReReplacer if current page is the ReReplacer administrator page
		if (JFactory::getApplication()->input->get('option') == 'com_rereplacer')
		{
			return false;
		}

		return true;
	}

	/*
	 * Below are the events that this plugin uses
	 * All handling is passed along to the parent run method
	 */
	public function onContentPrepare()
	{
		$this->run();
	}

	public function onAfterDispatch()
	{
		$this->run();
	}

	public function onAfterRender()
	{
		$this->run();
	}
}
