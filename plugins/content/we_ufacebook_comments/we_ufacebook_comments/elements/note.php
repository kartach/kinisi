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
class JElementNote extends JElement {
	var	$_name = 'note';
	
	function fetchElement($name, $value, &$node, $control_name){
		// Output
		return '
		<div style="clear:both;font-weight:bold;font-size:10px;color:#000;padding:3px;margin:0;background:#FFD379;">
			'.JText::_($value).'
		</div>
		';
	}
	
}
