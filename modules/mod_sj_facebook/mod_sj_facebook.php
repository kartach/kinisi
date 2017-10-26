<?php
/**
 * @package Sj Facebook
* @version 2.5
* @license http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
* @copyright (c) 2012 YouTech Company. All Rights Reserved.
* @author YouTech Company http://www.smartaddons.com
*
*/
defined('_JEXEC') or die;

	require_once (dirname(__FILE__).DS.'helper.php');
    
/*-- Process---*/    
	$layout = $params->get('layout', 'default');
    $intro = $params->get('intro_text','');
    $footer = $params->get('footer_text','');

    $sj_facebook_html = modSjFacebookHelper::getFanbox($params);
	require JModuleHelper::getLayoutPath($module->module, $layout);
    
?>
