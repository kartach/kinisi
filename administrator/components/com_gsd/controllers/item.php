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

jimport('joomla.application.component.controllerform');

/**
 * Item controller class
 */
class GSDControllerItem extends JControllerForm
{
	protected $text_prefix = 'GSD';
}
