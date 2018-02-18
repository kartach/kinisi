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

defined('_JEXEC') or die('Restricted Access');

require_once JPATH_COMPONENT_ADMINISTRATOR . '/helpers/json.php';

jimport('joomla.filesystem.folder');

/**
 *  Google Structured Data Dashboard Helper Class
 */
class GSDDashboard
{
	private static $items;
	private static $integrations;

	public static function getStats()
	{
		$siteData     = self::getSiteData();
		$integrations = self::getIntegrations();

		return array(
			'items'           => self::getItemsPerContentType() ?: array(),
			'itemsCount'      => count(self::getItems()),
			'siteData'        => $siteData ?: array(),
			'siteDataEnabled' => $siteData ? count(array_filter($siteData)) : 0,
			'integrations'    => $integrations,
			'integrationsEnabled' => $integrations ? count(array_filter($integrations)) : 0
		);
	}

	public static function getIntegrations()
	{
		if (is_array(self::$integrations))
		{
			return self::$integrations;
		}

		$integrations = JFolder::folders(JPATH_PLUGINS . '/gsd');
		$integrations = is_array($integrations) ? array_flip($integrations) : array();

		foreach ($integrations as $key => $integration)
		{
			$integrations[$key] = JPluginHelper::isEnabled('gsd', $key);
		}

		return (self::$integrations = $integrations);
	}

	public static function getSiteData()
	{
		$params = GSDHelper::getParams();

		// Determine if Social Profiles snippet is enabled
		$socialProfileIsEnabled = false;
		$socialProfileFields = array(
			'facebook',
			'twitter',
			'googleplus',
			'instagram',
			'youtube',
			'linkedin',
			'pinterest',
			'soundcloud',
			'tumblr',
			'other'
		);

		foreach ($socialProfileFields as $key => $field)
		{
			if ($params->get('socialprofiles_' . $field, null))
			{
				$socialProfileIsEnabled = true;
				break;
			}
		}

		return array(
			'GSD_SITENAME_NAME'        => (bool) $params->get('sitename_enabled', 1),
			'GSD_BREADCRUMBS'          => (bool) $params->get('breadcrumbs_enabled', 1),
			'GSD_SITELINKS_NAME'       => (bool) $params->get('sitelinks_enabled', 1),
			'GSD_LOGO'                 => (bool) $params->get('logo_file', 0) ? 1 : 0,
			'GSD_BUSINESSLISTING_NAME' => (bool) $params->get('businesslisting_enabled', 0),
			'GSD_SOCIALPROFILES'       => (bool) $socialProfileIsEnabled
		);
	}

	public static function getItems()
	{
		if (is_array(self::$items))
		{
			return self::$items;
		}

		JModelLegacy::addIncludePath(JPATH_COMPONENT_ADMINISTRATOR . '/models/');

		$model = JModelLegacy::getInstance('Items', 'GSDModel', array('ignore_request' => true));
		$model->setState('filter.state', 1);

		return (self::$items = $model->getItems());
	}

	public static function getContentTypes()
	{
		$json = new GSDJson();
		return $json->contentTypes;
	}

	public static function getItemsPerContentType()
	{
		$items = self::getItems();
		$overview = array();

		foreach ($items as $key => $item)
		{
			$type  = $item->contenttype;
			$count = !isset($overview[$type]) ? 1 : $overview[$type] + 1;
			$overview[$type] = $count;
		}

		$result = array();
		$contentTypes = self::getContentTypes();

		foreach (self::getContentTypes() as $value)
		{
			$count = 0;
			$share = 0;

			if (isset($overview[$value]))
			{
				$count = $overview[$value];
				$share = intval($overview[$value] / count($items) * 100);
			}

			$result[$value] = array(
				'count' => $count,
				'share' => $share
			);
		}

		ksort($result);
	
		return $result;
	}
}

?>