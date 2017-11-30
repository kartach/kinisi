<?php
/**
 * @package         Dummy Content
 * @version         5.0.2
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

use RegularLabs\Plugin\System\DummyContent\Plugin;

/**
 * Plugin that places dummy texts
 */
class PlgSystemDummyContent extends Plugin
{
	public $_alias       = 'dummycontent';
	public $_title       = 'DUMMY_CONTENT';
	public $_lang_prefix = 'DC';

	public $_has_tags     = true;
	public $_only_in_html = true;

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
