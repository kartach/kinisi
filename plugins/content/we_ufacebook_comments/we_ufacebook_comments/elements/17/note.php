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
class JFormFieldNote extends JFormField {
	protected $type = 'note';
	 
	public function getInput() {
		return '<div style="clear:both;font-weight:bold;font-size:11px;color:#000;padding:3px;margin:0;background:#FFD379;">'.$this->value.'</div>';
	}
}
