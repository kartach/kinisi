<?php
defined('_JEXEC') or die;
// --------------------------------------------------------------------
// Software: eorisis Google Analytics
// Type: Joomla! System Plugin
// Author: eorisis https://eorisis.com
// Copyright (C) 2011-2017 eorisis. All Rights Reserved.
// License: GNU General Public License version 2; See /misc/licence.txt
// Terms of Service: https://eorisis.com/tos
// --------------------------------------------------------------------

class plgSystemEorisis_google_analyticsInstallerScript
{
	private $J170_higher;
	private $J3;
	private $current_path;
	private $install_type;
	private $install_type_txt;
	private $version_upgrade;
	private $ext_version_old = '';
	private $jversion = '';
	private $manifest_cache;
	private $html;
	private $db;
	private $db_error;
	private $ext;
	private $update_multi;
	private $continue;

	// --------------------------------------------------

	public function preflight($type, $parent)
	{
		// Preflight is executed prior to any Joomla install, update or discover_install actions (or uninstall for plugins).
		$type = strtolower($type); // important

		// --------------------------------------------------

		switch ($type)
		{
			// Discover Install:
			// Discover Install is incomplete in the Joomla core.
			// We do not mess with user websites.
			case 'discover_install':
				$txt  = 'You cannot use <b>Discover Install</b> with any eorisis extensions. Discover Install is incomplete in the Joomla core. ';
				$txt .= 'If you are facing trouble with the installation please report it directly at '.$this->support();
				$this->sys_msg($txt, 'warning');
				return false;

			case 'uninstall':
				// Just do not continue in preflight
				// Only return;
				return;
		}

		if (!in_array($type, array('install','update')))
		{
			$this->sys_msg('You cannot use this Install Type', 'warning');
			return false;
		}

		if (!$this->basic_checks($type, $parent))
		{
			return false;
		}

		// --------------------------------------------------
		// Install, Update

		$this->J170_higher = version_compare($this->jversion, '1.7.0', '>=');
		$this->install_type_txt = $this->install_type($type);

		switch ($type)
		{
			case 'install':
				$setup_txt = 'Installation';
				$version_txt = 'Version Installed: <b>'.$this->ext->version.'</b>'.$this->ext->release_date;
				$method = $this->install_type_txt.' - Fresh Install.';
				$enable_ext = 'Remember to <b>enable</b> the '.ucfirst($this->ext->type).'.<br />';
				break;

			case 'update':
			{
				$setup_txt = 'Update';
				$method = $this->install_type_txt.'.';
				$current_version = $this->current_installed_version();

				if ($current_version)
				{
					$this->ext_version_old = $current_version;
				}
				else
				{
					$txt  = 'The <b>'.$this->ext->title.' '.ucfirst($this->ext->type).'</b> setup cannot continue.';
					$txt .= '<br />Your Joomla database has issues and you must fix them first.';
					$txt .= '<br />Please report this at '.$this->support();
					$txt .= '<br />';
					$txt .= '<br /><b>Database Error Message:</b>';
					$txt .= '<br />'.$this->db_error;
					$this->sys_msg($txt, 'warning');
					return false;
				}

				// Upgrade to a newer version
				if (version_compare($this->ext->version, $this->ext_version_old, '>'))
				{
					$this->version_upgrade = true;
					$version_txt  = 'You have upgraded from version <b>'.$this->ext_version_old.'</b> to version <b>'.$this->ext->version.'</b>';
					$version_txt .= $this->ext->release_date;
				}
				// Downgrade
				elseif (version_compare($this->ext->version, $this->ext_version_old, '<'))
				{
					$version_txt  = 'You have downgraded from version <b>'.$this->ext_version_old.'</b> to version <b>'.$this->ext->version.'</b>';
					$version_txt .= $this->ext->release_date.'<br />';
					$version_txt .= 'This is not recommended, you may have lost your '.ucfirst($this->ext->type).' settings.';
				}
				// Re-installed the same version
				else
				{
					$version_txt = 'You have re-installed version: <b>'.$this->ext_version_old.'</b>'.$this->ext->release_date;
				}

				$enable_ext = '';
			} break;
		}

		// --------------------------------------------------

		$this->set_html($setup_txt, $version_txt, $method, $enable_ext);
		$this->clean_up();
		$this->continue = true;
	}

	// --------------------------------------------------

	public function install($parent)
	{
		$this->sys_msg($this->html, ($this->J3 ? 'notice' : 'message'));

		if (!$this->continue)
		{
			return false;
		}
	}

	// --------------------------------------------------

	public function update($parent)
	{
		if ($this->update_multi)
		{
			$this->html .= '<hr>';
		}
		$this->sys_msg($this->html, ($this->J3 ? 'notice' : 'message'));

		if (!$this->continue)
		{
			return false;
		}
	}

	// --------------------------------------------------

	public function uninstall($parent)
	{
		// Uninstall cannot cause an abort of the Joomla uninstall action, so returning false does nothing
	}

	// --------------------------------------------------

	public function postflight($type, $parent)
	{
		// postflight() Executed after Install or Update. Not after uninstall
		// --------------------------------------------------

		$type = strtolower($type); // important

		// --------------------------------------------------

		if (!$this->continue)
		{
			return false;
		}

		// --------------------------------------------------

		$this->refresh_update_sites();
		$this->refresh_admin_cache();
	}

	// --------------------------------------------------

	private function basic_checks($type, $parent)
	{
		if (!$this->get_plg_data($parent))
		{
			$txt  = 'Installation aborted due to a Joomla or package problem, or your server setup.';
			$txt .= ' Try to download the original package again from eorisis.com and retry the installation.';
			$txt .= ' If this persists, please report it directly at '.$this->support();
			$this->sys_msg($txt, 'warning');
			return false;
		}

		// Minimum PHP Version Check
		if (version_compare(PHP_VERSION, $this->ext->min_php_version, '<'))
		{
			$txt  = 'Your PHP version is '.PHP_VERSION;
			$txt .= ' - <b>'.$this->ext->title.' '.ucfirst($this->ext->type).'</b> requires PHP version <b>'.$this->ext->min_php_version.'</b> or higher in order to work properly.';
			$txt .= ' Please upgrade PHP first.';
			$this->sys_msg($txt, 'warning');
			return false;
		}

		// Minimum Joomla Version Check
		if (version_compare($this->jversion, $this->ext->min_jversion, '<'))
		{
			$txt  = 'The <b>'.$this->ext->title.' '.ucfirst($this->ext->type).' version '.$this->ext->version.'</b> '.$type;
			$txt .= ' cannot continue, because you are running Joomla! <b>'.$this->jversion.'</b>.';
			$txt .= '<br />The minimum Joomla version for this extension is <b>'.$this->ext->min_jversion.'</b>.';
			$txt .= '<br />You must upgrade your Joomla before you can install this extension.';
			$this->sys_msg($txt, 'warning');
			return false;
		}

		return true;
	}

	// --------------------------------------------------

	private function get_plg_data($parent)
	{
		if (!defined('JPATH_SITE') or !defined('JPATH_ADMINISTRATOR'))
		{
			return;
		}

		// --------------------------------------------------

		$this->J3 = version_compare(JVERSION, 3, '>=');
		$this->jversion = $this->version_correction(JVERSION);
		$this->current_path = dirname(__FILE__);
		$xml = version_compare($this->jversion, '3.6', '<') ? $parent->get('manifest') : $parent->manifest;
		$obj = new stdClass;
		$obj->element = (string)$xml->name;

		// --------------------------------------------------

		if (!$xml or !$obj->element)
		{
			return;
		}

		// --------------------------------------------------

		$attr = $xml->attributes();
		$obj->type = (string)$attr->type;
		$lang_path_rel = 'language/'.(string)$xml->languages->language[1];
		$obj->group = (string)$attr->group;
		$obj->title_full = $this->ext_title_full($lang_path_rel, $obj->element);
		$path_root = JPATH_SITE.'/plugins/'.$obj->group.'/';

		$obj->media_dir = $this->media_destination($xml);
		$obj->path = $path_root.$obj->element.'/';
		$obj->title = (string)$xml->title;
		$obj->min_jversion = (string)$attr->version;
		$obj->min_php_version = (string)$xml->min_php_version;
		$obj->version = (string)$xml->version;
		$obj->release_date = ' - Released on '.(string)$xml->creationDate.'.';
		$obj->short_url = (string)$xml->short_url;
		$obj->author_url = (string)$xml->authorUrl;
		$obj->copyright = str_replace('(C)', '&copy;', (string)$xml->copyright);

		// --------------------------------------------------

		$this->ext = $obj;
		return true;
	}

	// --------------------------------------------------

	private function media_destination($xml)
	{
		$dir = (string)$xml->media['destination'];
		if ($dir)
		{
			$dir = preg_replace('/[^a-zA-Z_-]+/', '', $dir);
			if (strlen($dir))
			{
				return JPATH_SITE.'/media/'.$dir.'/';
			}
		}
	}

	// --------------------------------------------------

	private function install_type($type)
	{
		$task = null;
		if ($type == 'discover_install')
		{
			$this->install_type = $type;
		}
		else
		{
			$task = $this->get_input('task');
			if ($task)
			{
				// J3.7.x includes task: ajax_upload
				// J3.x task: install.install
				// J2.x task: install
				if (in_array($task, array('ajax_upload','install.install','install')))
				{
					$type = $this->get_input('installtype');
					if ($type)
					{
						$this->install_type = $type; // upload, folder, url
					}
				}

				// J3.x task: update.update
				// J2.x task: update
				elseif (in_array($task, array('update.update','update')))
				{
					$boxchecked = (int)$this->get_input('boxchecked'); // seen as 01
					if ($boxchecked)
					{
						if ($boxchecked == 1)
						{
							$this->install_type = 'update';
						}
						elseif ($boxchecked > 1)
						{
							$this->install_type = 'update_multi';
							$this->update_multi = true;
						}
					}
				}
			}
		}

		// --------------------------------------------------

		switch ($this->install_type)
		{
			case 'update'			: return 'Joomla Update';
			case 'update_multi'		: return 'Joomla Update (Multiple Extensions)';
			case 'upload'			: return 'Upload Package File ('.(($task == 'ajax_upload') ? 'Drag and Drop ' : '').'File Upload)';
			case 'folder'			: return 'Install from Folder';
			case 'url'				: return 'Install from URL';
			case 'discover_install'	: return 'Discover Install';
		}

		return 'Unknown';
	}

	// --------------------------------------------------

	private function clean_dir_contents($path, $exceptions = null)
	{
		if (is_dir($path))
		{
			$exceptions_default = array(
				'.',
				'..',
				'.htaccess',
				'.htpasswd',
				'.ftpquota'
			);
			if ($exceptions)
			{
				if (is_array($exceptions))
				{
					if (!empty($exceptions))
					{
						$exceptions = array_merge($exceptions_default, $exceptions);
						$exceptions = array_unique($exceptions);
					}
				}
				elseif (is_string($exceptions))
				{
					$exceptions_default[] = (string)$exceptions;
					$exceptions = $exceptions_default;
				}
			}
			else
			{
				$exceptions = $exceptions_default;
			}

			$contents = array_diff(scandir($path), $exceptions);
			if (!empty($contents))
			{
				foreach ($contents as $item)
				{
					if (strlen($item))
					{
						$this->delete(realpath($path).'/'.$item);
					}
				}
			}

			return true;
		}
	}

	// --------------------------------------------------

	private function delete($path)
	{
		if (is_dir($path))
		{
			$contents = array_diff(scandir($path), array('.', '..'));
			foreach ($contents as $item)
			{
				if (strlen($item))
				{
					$this->delete(realpath($path).'/'.$item);
				}
			}

			return rmdir($path);
		}

		if (is_file($path))
		{
			return unlink($path);
		}

		return false;
	}

	// --------------------------------------------------

	private function sys_msg($msg, $type)
	{
		JFactory::getApplication()->enqueueMessage($msg, $type);
	}

	// --------------------------------------------------

	private function version_correction($version)
	{
		if (strlen($version) == 3)
		{
			$version .= '.0';
		}

		return $version;
	}

	// --------------------------------------------------

	private function current_installed_version()
	{
		$version = $this->manifest_cache('version');
		if ($version)
		{
			return preg_replace('/[^0-9a-zA-Z.-]+/', '', $version);
		}
	}

	// --------------------------------------------------

	private function manifest_cache($value = false)
	{
		if ($this->manifest_cache === null)
		{
			$this->manifest_cache = false;
			try
			{
				$db = $this->dbo();
				$query = $db->getQuery(true);
				$query->select($this->quote_name('manifest_cache'));
				$query->from($this->quote_name('#__extensions'));
				$query->where(array(
					$this->quote_name('type').'='.$db->quote($this->ext->type),
					$this->quote_name('element').'='.$db->quote($this->ext->element),
					$this->quote_name('folder').'='.$db->quote($this->ext->group)
				));
				$db->setQuery($query);
				$this->manifest_cache = json_decode($db->loadResult());
			}
			catch(Throwable $e)
			{
				$this->db_error = $e->getMessage();
				return false;
			}
			catch(Exception $e)
			{
				$this->db_error = $e->getMessage();
				return false;
			}
		}

		if ($this->manifest_cache)
		{
			return $value ? (string)$this->manifest_cache->$value : $this->manifest_cache;
		}
	}

	// --------------------------------------------------

	private function set_html($setup_txt, $version_txt, $method, $enable_ext)
	{
		$ext_menu = (version_compare($this->jversion, '3.4.4-rc', '>=') ? 's' : ' Manager'); // Extension Manager Menu
		$go_to = 'You may now go to: <b>Extensions > '.ucfirst($this->ext->type).$ext_menu.' > '.$this->ext->title_full.'</b>';
		$changelog_url = $this->ext->author_url.'/'.$this->ext->short_url.'/changelog';
		$donate_url = $this->ext->author_url.'/'.'donate';
		$jed_url = $this->ext->author_url.'/'.$this->ext->short_url.'/jed';

		$html  = '<p>';
		$html .=	'<b>'.$this->ext->title.' ('.ucfirst($this->ext->group).' '.ucfirst($this->ext->type).')</b> '.$setup_txt.' Complete.<br />';
		$html .=	$version_txt.'<br />';
		$html .=	'Method Used: '.$method.'<br />';
		$html .=	'<b>Fully compatible with Joomla 4.</b><br />';
		$html .=	'<br />';
		$html .=	'Changelog: <b>'.$this->link($changelog_url, $changelog_url).'</b><br />';
		$html .=	'Support: <b>'.$this->support().'</b><br />';
		$html .=	'Rate <b>'.$this->link($jed_url, $this->ext->title.' on the Joomla! Extensions Directory').'</b><br />';
		$html .=	'Support the Development: <b>'.$this->link($donate_url, $donate_url).'</b><br />';
		$html .=	'<br />';
		$html .=	$go_to.'<br />';
		$html .=	$enable_ext;
		$html .=	"After an Install, Update or Uninstall, clear the cache of your Joomla and browser.<br />";
		$html .=	'<br />';
		$html .=	'Thanks for choosing eorisis.<br />';
		$html .=	$this->ext->copyright;
		$html .= '</p>';

		$this->html = $html;
	}

	// --------------------------------------------------

	private function refresh_update_sites()
	{
		$table = '#__update_sites';
		$update_sites = null;
		try
		{
			$db = $this->dbo();
			$query = $db->getQuery(true);
			$query->select(array(
				$this->quote_name('update_site_id'),
				$this->quote_name('location'),
				$this->quote_name('enabled')
			));
			$query->from($this->quote_name($table));
			$query->where($this->quote_name('name').' LIKE '.$db->quote('eorisis:%'));
			$db->setQuery($query);
			$update_sites = $db->loadObjectList();
		}
		catch(Throwable $e)
		{
			$db_error = $e->getMessage();
			return false;
		}
		catch(Exception $e)
		{
			$db_error = $e->getMessage();
			return false;
		}

		if (!$update_sites)
		{
			return;
		}

		$J34_older = version_compare($this->jversion, '3.4', '<');
		foreach ($update_sites as $obj)
		{
			if (!is_object($obj))
			{
				continue;
			}

			$old_url = (strpos($obj->location, 'http://') === 0);
			$disabled = ($J34_older && ($obj->enabled != 1));

			if ($old_url or $disabled)
			{
				$fields = array();
				try
				{
					$query = $db->getQuery(true);
					$query->update($this->quote_name($table));

					if ($old_url)
					{
						$new_location = str_replace('http://', 'https://', $obj->location);
						$fields[] = $this->quote_name('location').'='.$db->quote($new_location);
					}

					if ($disabled)
					{
						$fields[] = $this->quote_name('enabled').'='.$db->quote(1);
					}

					$query->set($fields);
					$query->where($this->quote_name('update_site_id').'='.$db->quote((int)$obj->update_site_id));
					$db->setQuery($query);
					$this->db_execute();
				}
				catch(Throwable $e)
				{
					$db_error = $e->getMessage();
					return false;
				}
				catch(Exception $e)
				{
					$db_error = $e->getMessage();
					return false;
				}
			}
		}

		return true;
	}

	// --------------------------------------------------

	private function get_input($name, $filter = 'RAW')
	{
		if (version_compare(JVERSION, '1.7.1', '>='))
		{
			return JFactory::getApplication()->input->get($name, null, $filter);
		}

		return JRequest::getVar($name);
	}

	// --------------------------------------------------

	private function link($url, $txt)
	{
		return '<a href="'.$url.'" target="_blank" title="'.JText::_('JBROWSERTARGET_NEW').'">'.$txt.'</a>';
	}

	// --------------------------------------------------

	private function support()
	{
		$email = 'support@eorisis.com';
		return '<a href="mailto:'.$email.'" target="_top">'.$email.'</a>';
	}

	// --------------------------------------------------

	private function dbo()
	{
		if (!$this->db)
		{
			$this->db = JFactory::getDbo();
		}

		return $this->db;
	}

	// --------------------------------------------------

	private function db_execute()
	{
		return $this->J3 ? $this->db->execute() : $this->db->query();
	}

	// --------------------------------------------------

	private function quote_name($name)
	{
		return $this->J170_higher ? $this->db->quoteName($name) : $this->db->nameQuote($name);
	}

	// --------------------------------------------------

	private function refresh_admin_cache()
	{
		// Due to a Joomla bug on versions 3.7.1 or older, the adminsitrator cache must be cleared manually
		// https://github.com/joomla/joomla-cms/issues/15588

		$txt = 'Administrator cache refresh was successful.';
		if (version_compare($this->jversion, '3.7.1', '<='))
		{
			$admin_cache_path = JPATH_ADMINISTRATOR.'/cache/';
			if (file_exists($admin_cache_path) and is_dir($admin_cache_path))
			{
				if ($this->clean_dir_contents($admin_cache_path, 'index.html'))
				{
					$this->sys_msg($txt, 'message');
				}
			}

			return;
		}

		if (JFactory::getCache(1)->clean())
		{
			$this->sys_msg($txt, 'message');
		}
	}

	// --------------------------------------------------

	private function ext_title_full($lang_path_rel, $element)
	{
		$current_path = str_replace('framework'.DIRECTORY_SEPARATOR.'install', '', $this->current_path);
		$ini = $current_path.$lang_path_rel;
		if ($ini)
		{
			$ini = parse_ini_file($ini);
			return $ini[strtoupper($element)];
		}
	}

	// --------------------------------------------------

	private function clean_up()
	{
		$this->clean_dir_contents($this->ext->path.'framework');
//		$this->clean_dir_contents($this->ext->media_dir);
	}
}
