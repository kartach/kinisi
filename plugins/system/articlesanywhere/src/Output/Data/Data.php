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

namespace RegularLabs\Plugin\System\ArticlesAnywhere\Output\Data;

use RegularLabs\Plugin\System\ArticlesAnywhere\Collection\Item;
use RegularLabs\Plugin\System\ArticlesAnywhere\Config;

defined('_JEXEC') or die;

class Data implements DataInterface
{
	var $config;
	var $item;

	public function __construct(Config $config, Item $item)
	{
		$this->config = $config;
		$this->item   = $item;
	}

	public function get($key, $attributes)
	{
		return null;
	}
}
