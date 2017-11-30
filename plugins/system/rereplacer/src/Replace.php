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

use JFactory;
use RegularLabs\Library\RegEx as RL_RegEx;

/**
 * Plugin that replaces stuff
 */
class Replace
{
	static $item     = null;
	static $php_vars = [];
	static $counter  = [];

	public static function replaceInAreas(&$string)
	{
		if ( ! is_string($string) || $string == '')
		{
			return;
		}

		self::replaceInArea($string, 'component');
		self::replaceInArea($string, 'head');
		self::replaceInArea($string, 'body');

		self::replaceEverywhere($string);
	}

	private static function replaceInArea(&$string, $area_type = '')
	{
		if ( ! is_string($string) || $string == '' || ! $area_type)
		{
			return;
		}

		$items = Items::getItemList($area_type);

		if (empty($items))
		{
			return;
		}

		$areas = Tag::getAreaByType($string, $area_type);

		foreach ($areas as $area_type)
		{
			self::replaceItemList($area_type['1'], $items);
			$string = str_replace($area_type['0'], $area_type['1'], $string);
		}

		unset($areas);
	}

	private static function replaceEverywhere(&$string)
	{
		if ( ! is_string($string) || $string == '')
		{
			return;
		}

		$items = Items::getItemList('everywhere');

		self::replaceItemList($string, $items);
	}

	public static function replace(&$string, $item = null, &$article = null)
	{
		if (empty($string))
		{
			return;
		}

		if ( ! empty($item))
		{
			self::$item = clone($item);
		}

		if ( ! empty($article))
		{
			self::$php_vars['article'] = $article;
		}

		if (is_array($string))
		{
			self::replaceArray($string);

			return;
		}

		self::replaceItemInString($string);
	}

	private static function replaceItemInString(&$string)
	{
		switch (self::$item->regex)
		{
			case true:
				self::replaceRegEx($string);
				break;

			default:
				self::replaceString($string);
				break;
		}

	}

	private static function replaceArray(&$array)
	{
		if ( ! is_array($array))
		{
			return;
		}

		foreach ($array as &$string)
		{
			self::replace($string);
		}
	}

	private static function replaceItemList(&$string, $items)
	{
		if (empty($items))
		{
			return;
		}

		if ( ! is_array($items))
		{
			$items = [$items];
		}

		foreach ($items as $item)
		{
			self::replace($string, $item);
		}
	}

	private static function replaceRegEx(&$string)
	{
		$string       = str_replace(chr(194) . chr(160), ' ', $string);
		$string_array = Protect::stringToProtectedArray($string, self::$item);

		Clean::cleanString(self::$item->search);

		// escape hashes
		self::$item->search = str_replace('#', '\#', self::$item->search);
		// unescape double escaped hashes
		self::$item->search = str_replace('\\\\#', '\#', self::$item->search);

		if (self::$item->strip_p_tags)
		{
			self::$item->search = '<p(?: [^>]*)?>' . self::$item->search . '</p>';
		}

		self::prepareRegex(self::$item->search, self::$item->s_modifier, self::$item->casesensitive);

		self::replaceInArray($string_array);

		$string = implode('', $string_array);
	}

	private static function replaceString(&$string)
	{
		$string_array = Protect::stringToProtectedArray($string, self::$item);

		$search_array  = self::$item->treat_as_list ? explode(',', self::$item->search) : [self::$item->search];
		$replace_array = self::$item->treat_as_list ? explode(',', self::$item->replace) : [self::$item->replace];
		$replace_count = count($replace_array);

		foreach ($search_array as $key => $search)
		{
			if ($search == '')
			{
				continue;
			}

			// Prepare search string
			Clean::cleanString($search);
			self::$item->search = RL_RegEx::quote($search);

			if (self::$item->word_search)
			{
				self::$item->search = '(?<!\p{L})(' . self::$item->search . ')(?!\p{L})';
			}

			if (self::$item->strip_p_tags)
			{
				self::$item->search = '<p(?: [^>]*)?>' . self::$item->search . '</p>';
			}

			self::prepareRegex(self::$item->search, true, self::$item->casesensitive);

			// Prepare replace string
			self::$item->replace = ($replace_count > $key) ? $replace_array[$key] : $replace_array['0'];

			self::replaceInArray($string_array);
		}

		$string = implode('', $string_array);
	}

	public static function replaceInArray(&$array)
	{
		foreach ($array as $key => &$string)
		{
			// only do something if string is not empty
			// or on uneven count = not yet protected
			if (trim($string) == '' || fmod($key, 2))
			{
				continue;
			}

			self::replacer($string);
		}
	}

	private static function replacer(&$string)
	{
		if ( ! RL_RegEx::match(self::$item->search, $string))
		{
			return;
		}

		Variables::replacePre(self::$item->replace);


		Clean::cleanStringReplace(self::$item->replace, self::$item->regex);

		// Do a simple replace if not thorough and counter is not found
		if ( ! self::$item->thorough && strpos(self::$item->replace, '[[counter]]') === false && strpos(self::$item->replace, '\#') === false)
		{
			$string = RL_RegEx::replace(self::$item->search, self::$item->replace, $string);

			Variables::replacePost($string);

			return;
		}

		$counter_name = self::getCounterName(self::$item->search, self::$item->replace);

		$thorough_count = 1; // prevents the thorough search to repeat endlessly
		while ($count = RL_RegEx::matchAll(self::$item->search, $string))
		{
			self::replaceOccurrence(self::$item->search, self::$item->replace, $string, $count, $counter_name);

			if ( ! self::$item->thorough || ++$thorough_count >= 100)
			{
				break;
			}
		}

		Variables::replacePost($string);
	}

	private static function getCounterName($search, $replace)
	{
		if (strpos($replace, '[[counter]]') === false && strpos($replace, '\#') === false)
		{
			return '';
		}

		// Counter is used to make it possible to use \# or [[counter]] in the replacement to refer to the incremental counter
		$counter_name = base64_encode($search . $replace);

		if ( ! isset(self::$counter[$counter_name]))
		{
			self::$counter[$counter_name] = 0;
		}

		return $counter_name;
	}

	private static function replaceOccurrence($search, $replace, &$string, $count = 0, $counter_name = '')
	{
		if ( ! $counter_name)
		{
			$string = RL_RegEx::replace($search, $replace, $string);

			return;
		}

		for ($i = 0; $i < $count; $i++)
		{
			// Replace \# with the incremental counter
			$replace_c = str_replace(['\#', '[[counter]]'], ++self::$counter[$counter_name], $replace);

			// Replace with offset
			RL_RegEx::match(self::$item->search, $string, $matches, null, PREG_OFFSET_CAPTURE);

			$substring          = substr($string, $matches['0']['1']);
			$substring_replaced = RL_RegEx::replaceOnce($search, $replace_c, $substring);

			$string = str_replace($substring, $substring_replaced, $string);
		}
	}


	private static function prepareRegex(&$string, $dotall = true, $casesensitive = true)
	{
		$string = '#' . $string . '#';

		$string .= $dotall ? 's' : ''; // . (dot) also matches newlines
		$string .= $casesensitive ? '' : 'i'; // case-insensitive pattern matching

		// replace new lines with regex match
		$string = str_replace(["\r", "\n"], ['', '(?:\r\n|\r|\n)'], $string);
	}
}
