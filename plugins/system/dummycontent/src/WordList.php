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

use JFile;
use RegularLabs\Library\RegEx as RL_RegEx;

class WordList
{
	static $list        = [];
	static $type        = 'lorem';
	static $is_sentence = false;

	public static function setType($type)
	{


		return;
	}

	public static function getList()
	{
		if (isset(self::$list[self::$type]))
		{
			return self::$list[self::$type];
		}

		$path  = __DIR__ . '/wordlists/';
		$words = file_get_contents($path . self::$type . '.txt');
		$words = trim(RL_RegEx::replace('(^|\n)\/\/ [^\n]*', '', $words));

		self::$list[self::$type] = explode("\n", $words);

		return self::$list[self::$type];
	}

	public static function isSentenceList()
	{
		return self::$is_sentence;
	}
}
