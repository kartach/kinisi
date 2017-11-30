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

// Access check.
if ( ! JFactory::getUser()->authorise('core.manage', 'com_rereplacer'))
{
	return JError::raiseWarning(404, JText::_('JERROR_ALERTNOAUTHOR'));
}

jimport('joomla.filesystem.file');

// return if Regular Labs Library plugin is not installed
if (
	! is_file(JPATH_PLUGINS . '/system/regularlabs/regularlabs.xml')
	|| ! is_file(JPATH_LIBRARIES . '/regularlabs/autoload.php')
)
{
	$msg = JText::_('RR_REGULAR_LABS_LIBRARY_NOT_INSTALLED')
		. ' ' . JText::sprintf('RR_EXTENSION_CAN_NOT_FUNCTION', JText::_('COM_REREPLACER'));
	JFactory::getApplication()->enqueueMessage($msg, 'error');

	return;
}

// give notice if Regular Labs Library plugin is not enabled
if ( ! JPluginHelper::isEnabled('system', 'regularlabs'))
{
	$msg = JText::_('RR_REGULAR_LABS_LIBRARY_NOT_ENABLED')
		. ' ' . JText::sprintf('RR_EXTENSION_CAN_NOT_FUNCTION', JText::_('COM_REREPLACER'));
	JFactory::getApplication()->enqueueMessage($msg, 'notice');
}

require_once JPATH_LIBRARIES . '/regularlabs/autoload.php';

use RegularLabs\Library\Language as RL_Language;

// load the Regular Labs Library language file
RL_Language::load('plg_system_regularlabs');

$controller = JControllerLegacy::getInstance('ReReplacer');
$controller->execute(JFactory::getApplication()->input->get('task'));
$controller->redirect();

