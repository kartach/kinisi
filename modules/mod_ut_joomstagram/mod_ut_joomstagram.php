<?php
/**
* @package 		Joomla.site
* @subpackage 	mod_ut_spectragram
* @version		1.0.0
* @created		Jan 2015
* @author		Unitemplates
* @email		info@unitemplates.com
* @website		http://www.unitemplates.com
* @copyright	Copyright (C) 2014 - 2015 Unitemplates. All rights reserved.
* @license		GNU General Public License version 2 or later.
*/
defined('_JEXEC') or die;

$class_sfx = htmlspecialchars($params->get('moduleclass_sfx'));

require JModuleHelper::getLayoutPath('mod_ut_joomstagram', $params->get('layout', 'default'));