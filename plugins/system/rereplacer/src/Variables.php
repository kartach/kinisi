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
use JHtml;
use RegularLabs\Library\Date as RL_Date;
use RegularLabs\Library\RegEx as RL_RegEx;
use RegularLabs\Library\StringHelper as RL_String;

class Variables
{
	static $user    = null;
	static $contact = null;
	static $profile = null;

	public static function replacePre(&$string)
	{
		self::replaceTagByType($string, 'user');
		self::replaceTagByType($string, 'date');
		self::replaceTagByType($string, 'random');
	}

	public static function replacePost(&$string)
	{
		self::replaceDoubleTagByType($string, 'escape');
		self::replaceDoubleTagByType($string, 'lowercase');
		self::replaceDoubleTagByType($string, 'uppercase');
	}

	// single [[tag:...]] style tag on single line
	private static function replaceTagByType(&$string, $type)
	{
		if (strpos($string, '[[' . $type . ':') === false)
		{
			return;
		}

		RL_RegEx::matchAll('\[\[' . $type . '\:(.*?)\]\]', $string, $matches);

		if (empty($matches))
		{
			return;
		}

		foreach ($matches as $match)
		{
			self::replaceMatchByType($type, $string, $match);
		}
	}

	// double [[tag]]...[[/tag]] style tag on multiple lines
	private static function replaceDoubleTagByType(&$string, $type)
	{
		if (strpos($string, '[[' . $type . ']]') === false)
		{
			return;
		}

		RL_RegEx::matchAll('\[\[' . $type . '\]\](.*?)\[\[/' . $type . '\]\]', $string, $matches);

		if (empty($matches))
		{
			return;
		}

		foreach ($matches as $match)
		{
			self::replaceMatchByType($type, $string, $match);
		}
	}

	private static function replaceMatchByType($type, &$string, $match)
	{
		switch ($type)
		{
			case 'user':
				self::replaceMatchUser($string, $match);
				break;

			case 'date':
				self::replaceMatchDate($string, $match);
				break;

			case 'random':
				self::replaceMatchRandom($string, $match);
				break;

			case 'escape':
				self::replaceMatchEscape($string, $match);
				break;

			case 'lowercase':
				self::replaceMatchLowercase($string, $match);
				break;

			case 'uppercase':
				self::replaceMatchUppercase($string, $match);
				break;
		}
	}

	private static function replaceMatchUser(&$string, $match)
	{
		if ($match['1'] == 'password')
		{
			$string = str_replace($match['0'], '', $string);

			return;
		}

		$user = self::getUser();

		if ($user->guest)
		{
			$string = str_replace($match['0'], '', $string);

			return;
		}

		if (isset($user->{$match['1']}))
		{
			$string = str_replace($match['0'], $user->{$match['1']}, $string);

			return;
		}

		$contact = self::getContact();

		if (isset($contact->{$match['1']}))
		{
			$string = str_replace($match['0'], $contact->{$match['1']}, $string);

			return;
		}

		$profile = self::getProfile();

		if (isset($profile->{$match['1']}))
		{
			$string = str_replace($match['0'], $profile->{$match['1']}, $string);

			return;
		}

		$string = str_replace($match['0'], '', $string);
	}

	private static function replaceMatchDate(&$string, $match)
	{
		$string = str_replace($match['0'], self::getDateFromFormat($match['1']), $string);
	}

	private static function replaceMatchRandom(&$string, $match)
	{
		$range = trim($match['1']);

		if ( ! RL_RegEx::match('^([0-9]+)-([0-9]+)$', $range, $range))
		{
			return;
		}

		$replace = rand((int) $range['1'], (int) $range['2']);
		$string  = RL_String::replaceOnce($match['0'], $replace, $string);
	}

	private static function replaceMatchEscape(&$string, $match)
	{
		$string = str_replace($match['0'], addslashes($match['1']), $string);
	}

	private static function replaceMatchLowercase(&$string, $match)
	{
		$string = str_replace($match['0'], strtolower($match['1']), $string);
	}

	private static function replaceMatchUppercase(&$string, $match)
	{
		$string = str_replace($match['0'], strtoupper($match['1']), $string);
	}

	private static function getDateFromFormat($date)
	{
		if ($date && strpos($date, '%') !== false)
		{
			$date = RL_Date::strftimeToDateFormat($date);
		}

		$date = str_replace('[TH]', '[--==--]', $date);

		$date = JHtml::_('date', 'now', $date);

		self::replaceThIndDate($date, '[--==--]');

		return $date;
	}

	private static function replaceThIndDate(&$date, $th = '[TH]')
	{
		if (strpos($date, $th) === false)
		{
			return;
		}

		RL_RegEx::matchAll('([0-9]+)' . RL_RegEx::quote($th), $date, $date_matches);

		if (empty($date_matches))
		{
			$date = str_replace($th, 'th', $date);

			return;
		}

		foreach ($date_matches as $date_match)
		{
			$suffix = 'th';
			switch ($date_match['1'])
			{
				case 1:
				case 21:
				case 31:
					$suffix = 'st';
					break;
				case 2:
				case 22:
				case 32:
					$suffix = 'rd';
					break;
				case 3:
				case 23:
					$suffix = 'rd';
					break;
			}
			$date = RL_String::replaceOnce($date_match['0'], $date_match['1'] . $suffix, $date);
		}

		$date = str_replace($th, 'th', $date);
	}

	private static function getUser()
	{
		if ( ! is_null(self::$user))
		{
			return self::$user;
		}

		self::$user = JFactory::getUser();
		self::flattenParams(self::$user);

		return self::$user;
	}

	private static function getContact()
	{
		if (self::$contact)
		{
			return self::$contact;
		}

		$db = JFactory::getDbo();

		$query = 'SHOW TABLES LIKE ' . $db->quote($db->getPrefix() . Params::get()->contact_table);
		$db->setQuery($query);

		$has_contact_table = $db->loadResult();
		if ( ! $has_contact_table)
		{
			self::$contact = (object) [
				'x' => '',
			];

			return self::$contact;
		}

		$query = $db->getQuery(true)
			->select('c.*')
			->from('#__' . Params::get()->contact_table . ' as c')
			->where('c.user_id = ' . (int) self::$user->id);
		$db->setQuery($query);
		self::$contact = $db->loadObject();

		if ( ! self::$contact)
		{
			self::$contact = (object) [
				'x' => '',
			];

			return self::$contact;
		}

		self::flattenParams(self::$contact);

		return self::$contact;
	}

	private static function getProfile()
	{
		if (self::$profile)
		{
			return self::$profile;
		}

		$db    = JFactory::getDbo();
		$query = $db->getQuery(true)
			->select('p.profile_key, p.profile_value')
			->from('#__user_profiles as p')
			->where('p.user_id = ' . (int) self::$user->id);
		$db->setQuery($query);
		$rows = $db->loadObjectList();

		$profile    = (object) [];
		$profile->x = '';

		foreach ($rows as $row)
		{
			$data = json_decode($row->profile_value);
			if (is_null($data))
			{
				$data = (object) [];
			}

			$profile->{substr($row->profile_key, 8)} = $data;
		}

		self::$profile = $profile;

		return self::$profile;
	}

	private static function flattenParams(&$object)
	{
		foreach ($object as $property)
		{
			if ( ! $property || ! is_string($property) || $property['0'] != '{')
			{
				continue;
			}

			$property = json_decode($property);
			if (is_null($property))
			{
				$property = (object) [];
			}

			foreach ($property as $key => $val)
			{
				if ( ! $val || isset($object->{$key}))
				{
					continue;
				}

				$object->{$key} = $val;
			}
		}
	}
}

