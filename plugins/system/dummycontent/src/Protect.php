<?php
/**
 * @package         Dummy Content
 * @version         5.0.2
 * 
 * @author          Peter van Westen <info@regularlabs.com>
 * @link            http://www.regularlabs.com
 * @copyright       Copyright © 2017 Regular Labs All Rights Reserved
 * @license         http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */

namespace RegularLabs\Plugin\System\DummyContent;

defined('_JEXEC') or die;

use RegularLabs\Library\Protect as RL_Protect;

class Protect
{
	static $name = 'Dummy Content';

	public static function _(&$string)
	{
		RL_Protect::protectFields($string, Params::getTags(true));
		RL_Protect::protectSourcerer($string);
	}

	public static function protectTags(&$string)
	{
		RL_Protect::protectTags($string, Params::getTags(true), false);
	}

	public static function unprotectTags(&$string)
	{
		RL_Protect::unprotectTags($string, Params::getTags(true), false);
	}
}
