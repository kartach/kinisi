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

jimport('joomla.form.formfield');
 
// The class name must always be the same as the filename (in camel case)
class JFormFieldFblike extends JFormField {
 
	//The field class must know its own type through the variable $type.
	protected $type = 'fblike';
 
	public function getInput() {
		return '<div style="clear:both;text-align:center;font-weight:bold;font-size:12px;color:#ffffff;padding:3px;margin:0;background:#6699FF;">'.$this->value.'</div>';
	}
}
