<?php
/**
 * @package         Cache Cleaner
 * @version         6.0.2
 * 
 * @author          Peter van Westen <info@regularlabs.com>
 * @link            http://www.regularlabs.com
 * @copyright       Copyright © 2017 Regular Labs All Rights Reserved
 * @license         http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */

namespace RegularLabs\CacheCleaner\Cache;

defined('_JEXEC') or die;

use RegularLabs\CacheCleaner\Params;

class Folders extends Cache
{
	// Empty tmp folder
	public static function purge_tmp()
	{
		self::emptyFolder(JPATH_SITE . '/tmp');
	}

}
