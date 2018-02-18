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

defined('_JEXEC') or die('Restricted access');

if (!@include_once(JPATH_PLUGINS . '/system/nrframework/autoload.php'))
{
	throw new RuntimeException('Novarain Framework is not installed', 500);
}

$app = JFactory::getApplication();

// Access check.
if (!JFactory::getUser()->authorise('core.manage', 'com_gsd'))
{
	$app->enqueueMessage(JText::_('JERROR_ALERTNOAUTHOR'), 'error');
	return;
}

require_once JPATH_COMPONENT_ADMINISTRATOR . '/helpers/helper.php';

JHtml::_('jquery.framework');

NRFramework\Functions::addMedia(array("styles.css", "script.js"), "com_gsd");
NRFramework\Functions::loadLanguage('com_gsd');

GSDHelper::event()->trigger('onGSDGetNames');

// Perform the Request task
$controller = JControllerLegacy::getInstance('GSD');
$controller->execute($app->input->get('task'));
$controller->redirect();
