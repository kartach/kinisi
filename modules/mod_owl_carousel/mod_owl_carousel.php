<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_owl_carousel
 *
 * @copyright   Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

// Include the syndicate functions only once
require_once __DIR__ . '/helper.php';

$app 	  = JFactory::getApplication();	
$doc = JFactory::getDocument();
$document =& $doc;
$template = $app->getTemplate();
$layout   = $app->input->getCmd('layout', '');

// Include Owl Carousel styles
switch($params->get('theme')){
	case 0:
		$document->addStyleSheet('modules/mod_owl_carousel/css/owl-carousel.css');
		break;
	case 1:
		$document->addStyleSheet('templates/'.$template.'/css/owl-carousel.css');
		break;
}

// Include Owl Carousel scripts
switch($params->get('script')){
	case 0:
		$document->addScript('modules/mod_owl_carousel/js/jquery.owl-carousel.js');
		break;
	case 1:
		$document->addScript('templates/'.$template.'/js/jquery.owl-carousel.js');
		break;	
}


$list = modOwlCarouselHelper::getList($params);
$moduleclass_sfx = htmlspecialchars($params->get('moduleclass_sfx'));

require JModuleHelper::getLayoutPath('mod_owl_carousel', $params->get('layout', 'default'));
