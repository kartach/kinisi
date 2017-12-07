<?php

/**
 * @author          Tassos Marinos <info@tassos.gr>
 * @link            http://www.tassos.gr
 * @copyright       Copyright © 2017 Tassos Marinos All Rights Reserved
 * @license         GNU GPLv3 <http://www.gnu.org/licenses/gpl.html> or later
*/

namespace NRFramework\Assignments;

defined('_JEXEC') or die;

use NRFramework\Assignment;

class Languages extends Assignment
{
	/**
	 *  Pass check language
	 *
	 *  @return  bool
	 */
	function passLanguages()
	{
		return $this->passSimple(\JFactory::getLanguage()->getTag(), $this->selection); 
	}
}
