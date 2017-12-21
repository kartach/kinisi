<?php 
/**
 * @package     Ultimate Facebook J!Comments
 * @version     1.3.27
 * @author      Stergios Zgouletas <info@web-expert.gr>
 * @link        http://www.web-expert.gr
 * @copyright   Copyright (C) 2010 Web-Expert.gr All Rights Reserved
 * @license     http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */
// no direct access
defined('_JEXEC') or die('Restricted access');
jimport('joomla.html.parameter.element');
class JElementDeletecache extends JElement {
	var	$_name = 'deletecache';
	
	function fetchElement($name, $value, &$node, $control_name){
		$uri = JFactory::getURI();
		$url = $uri->toString();
		if(!JRequest::getInt('delete',0)){
			JHTML::_('behavior.modal');
			return '<div><a class="btn btn-danger modal" rel="{handler:\'iframe\',size:{x:250,y:150}}" href="'.$url.'&tmpl=component&delete=1">Delete Comment\'s Cache Files</a></div>';
		}
		return ;
	}
}