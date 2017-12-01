<?php
/**
 * @package         ReReplacer
 * @version         8.2.2
 * 
 * @author          Peter van Westen <info@regularlabs.com>
 * @link            http://www.regularlabs.com
 * @copyright       Copyright © 2017 Regular Labs All Rights Reserved
 * @license         http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */

namespace RegularLabs\Plugin\System\ReReplacer;

defined('_JEXEC') or die;

use RegularLabs\Library\Protect as RL_Protect;
use RegularLabs\Library\RegEx as RL_RegEx;

class Clean
{
	public static function cleanString(&$string)
	{
		$string = str_replace(['[:space:]', '\[\:space\:\]', '[[space]]', '\[\[space\]\]'], ' ', $string);
		$string = str_replace(['[:comma:]', '\[\:comma\:\]', '[[comma]]', '\[\[comma\]\]'], ',', $string);
		$string = str_replace(['[:newline:]', '\[\:newline\:\]', '[[newline]]', '\[\[newline\]\]'], "\n", $string);
		$string = str_replace('[:REGEX_ENTER:]', '\\n', $string);
	}

	public static function cleanStringReplace(&$string, $is_regex = true)
	{
		if ( ! $is_regex)
		{
			$string = str_replace(['\\', '\\\\#', '$'], ['\\\\', '\\#', '\\$'], $string);
		}

		self::cleanString($string);
	}

	/**
	 * Just in case you can't figure the method name out: this cleans the left-over junk
	 */
	public static function cleanLeftoverJunk(&$string)
	{
		$string = RL_RegEx::replace('<\!-- (START|END): RR_[^>]* -->', '', $string);

		// Remove any leftover protection strings (shouldn't be necessary, but just in case)
		Protect::cleanProtect($string);

		// Remove any leftover protection tags
		if (strpos($string, '{noreplace}') !== false)
		{
			$item         = null;
			$string_array = Protect::stringToProtectedArray($string, $item, true);

			RL_Protect::replaceInArray($string_array, '#\{noreplace\}#', '');
			RL_Protect::replaceInArray($string_array, '#\{/noreplace\}#', '');

			$string = implode('', $string_array);
		}
	}
}
