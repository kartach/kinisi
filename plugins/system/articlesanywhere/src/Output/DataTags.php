<?php
/**
 * @package         Articles Anywhere
 * @version         7.2.1
 * 
 * @author          Peter van Westen <info@regularlabs.com>
 * @link            http://www.regularlabs.com
 * @copyright       Copyright © 2017 Regular Labs All Rights Reserved
 * @license         http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */

namespace RegularLabs\Plugin\System\ArticlesAnywhere\Output;

use JText;
use RegularLabs\Library\PluginTag as RL_PluginTag;
use RegularLabs\Library\RegEx as RL_RegEx;
use RegularLabs\Plugin\System\ArticlesAnywhere\Params;

defined('_JEXEC') or die;

class DataTags extends OutputObject
{
	public function handle(&$content)
	{
		list($data_tag_start, $data_tag_end) = Params::getDataTagCharacters();

		$spaces = RL_PluginTag::getRegexSpaces();

		$regex = RL_RegEx::quote($data_tag_start)
			. '(?<type>/?[a-z][a-z0-9-_\:]*)(?:' . $spaces . '(?<attributes>.*?))?'
			. RL_RegEx::quote($data_tag_end);
		RL_RegEx::matchAll($regex, $content, $matches);

		if (empty($matches))
		{
			return;
		}

		foreach ($matches as $match)
		{
			$value = $this->getValueFromTag($match);

			if (is_null($value))
			{
				continue;
			}

			$content = str_replace($match[0], $value, $content);
		}
	}

	private function getValueFromTag($tag)
	{
		$tag = $this->getTagValues($tag);

		$value = $this->values->get($tag->type, null, $tag->attributes);

		if (is_bool($value))
		{
			$value = $value ? JText::_('JYES') : JText::_('JNO');
		}

		return $value;
	}

	private function getTagValues($tag)
	{
		$type       = $tag['type'];
		$attributes = isset($tag['attributes']) ? $tag['attributes'] : '';

		$attributes = $this->getTagValuesFromString($type, $attributes);

		$key_aliases = [
			'limit'      => ['letters', 'letter_limit', 'characters', 'character_limit'],
			'words'      => ['word', 'word_limit'],
			'paragraphs' => ['paragraph', 'paragraph_limit'],
			'class'      => ['classes'],
		];

		RL_PluginTag::replaceKeyAliases($attributes, $key_aliases);

		return (object) compact('type', 'attributes');
	}

	private function getTagValuesFromString($type, $attributes)
	{
		if (empty($attributes))
		{
			return (object) [];
		}

		if ($type == 'layout' && strpos($attributes, '=') === false)
		{
			$attributes = 'layout layout="' . trim($attributes) . '"';
		}

		return RL_PluginTag::getAttributesFromString($attributes);
	}
}
