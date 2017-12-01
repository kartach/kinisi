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

if (!version_compare(JVERSION, 3, '>='))
{
	jimport('joomla.plugin.plugin');
}

class plgSystemEorisis_google_analytics extends JPlugin
{
	protected $app;
	protected $doc;
	protected $tracking_id;
	protected $tracking_code;
	protected $optout_code;
	private $app_type;
	private $app_name;
	private $webroot;
	private $fqdn;
	private $domain;
	private $area;
	private $is_admin;
	private $code_pos;
	private $optout_cookie_name;

	// --------------------------------------------------

	public function __construct(& $subject, $config)
	{
		parent::__construct($subject, $config);
		$this->app_type = $config['type'];
		$this->app_name = $config['name'];
	}

	// --------------------------------------------------

	public function onAfterInitialise()
	{
		if (!$this->app)
		{
			$this->app = JFactory::getApplication();
		}

		$this->doc = JFactory::getDocument();
		if ($this->doc->getType() != 'html')
		{
			return;
		}

		// --------------------------------------------------

		$this->is_admin = $this->app->isAdmin();
		$this->area = $this->area();
		$this->code_pos = $this->params->get('code_pos','body_end');
		$this->optout_code = $this->optout_code();
		$this->optout_admin();

		// --------------------------------------------------

		if (!$this->area)
		{
			return;
		}

		if ($this->code_pos == 'head')
		{
			if ($this->optout_code and !$this->is_admin)
			{
				$this->doc->addScriptDeclaration("\n".$this->minify($this->optout_code)."\n");
			}
		}

		// DNT
		if ($this->params->get('dnt', 0))
		{
			if ($this->server('HTTP_DNT'))
			{
				return;
			}
		}

		$this->set_urls();

		if ($this->in_exclude_lists())
		{
			return;
		}

		// --------------------------------------------------

		$this->tracking_code = $this->tracking_code();
		if (!$this->tracking_code)
		{
			return;
		}

		if ($this->code_pos == 'head')
		{
			$this->doc->addScriptDeclaration("\n".$this->minify($this->tracking_code)."\n");
		}
	}

	// --------------------------------------------------

	public function onAfterRender()
	{
		if ($this->code_pos != 'body_end')
		{
			return;
		}

		$js = array();
		if ($this->optout_code)
		{
			if ($this->is_admin or $this->area)
			{
				$js[] = $this->optout_code;
			}
		}

		if ($this->tracking_code)
		{
			$js[] = $this->tracking_code;
		}

		if ($js)
		{
			$this->set_code($js);
		}
	}

	// --------------------------------------------------

	private function tracking_code()
	{
		$tracking_id = $this->tracking_id();
		if (!$tracking_id)
		{
			return '';
		}

		// --------------------------------------------------
		// Global Object

		$global_object = 'ga';
		if ($this->params->get('global_object', 1) == 2) // Custom
		{
			$val = preg_replace('/[^a-zA-Z_]+/', '', $this->params->get('global_object_custom', $global_object));
			if ($val)
			{
				if ($val != $global_object)
				{
					$global_object = $val;
				}
			}
		}

		// --------------------------------------------------

		// Cookie Name
		$cookie_name = $this->cookie_name();
		$cookie_name_custom = ($cookie_name ? "'cookieName': '".$cookie_name."'" : false);

		// Cookie Domain
		$cookie_domain = $this->cookie_domain();
		$cookie_domain_custom = ($cookie_domain ? "'cookieDomain': '".$cookie_domain."'" : false);

		// Cookie Path
		$cookie_path = $this->cookie_path();
		$cookie_path_custom = ($cookie_path ? "'cookiePath': '".$cookie_path."'" : false);

		// Cookie Expires
		$cookie_expires = $this->cookie_expires();
		$cookie_expires_custom = (($cookie_expires !== null) ? "'cookieExpires': ".$cookie_expires : false);

		// --------------------------------------------------
		// Cookie Settings

		$cookie_settigns = '';
		if ($cookie_name_custom or $cookie_domain_custom or $cookie_path_custom or $cookie_expires_custom)
		{
			$arr = array_filter(array($cookie_name_custom, $cookie_domain_custom, $cookie_path_custom, $cookie_expires_custom));
			$cookie_settigns  = ", {\n";
			$cookie_settigns .= "\t\t".implode(",\n\t\t", $arr)."\n";
			$cookie_settigns .= "\t}";
		}

		// --------------------------------------------------
		// Enhanced Link Attribution

		$enhanced_link_attr = '';
		if ($this->params->get('enhanced_link_attr', 0))
		{
			$arr = array();

			// Cookie Name
			$v = preg_replace('/[^a-zA-Z_]+/', '', $this->params->get('enhanced_link_attr_cookie_name', '_gali'));
			if ($v)
			{
				if ($v != '_gali')
				{
					$arr[] = "'cookieName': '".$v."'";
				}
			}

			// Duration
			$v = (int)$this->params->get('enhanced_link_attr_duration', 30);
			if ($v != 30)
			{
				if ($v >= 0)
				{
					$arr[] = "'duration': ".$v;
				}
			}

			// Levels
			$v = (int)$this->params->get('enhanced_link_attr_levels', 3);
			if ($v)
			{
				if ($v != 3)
				{
					$arr[] = "'levels': ".$v;
				}
			}

			$attr = '';
			if (!empty($arr))
			{
				$attr  = ", {\n";
				$attr .= "\t\t".implode(",\n\t\t", $arr)."\n";
				$attr .= "\t}";
			}

			$enhanced_link_attr = "\t".$global_object."('require', 'linkid', 'linkid.js'".$attr.");\n";
		}

		// --------------------------------------------------
		// Cross-Domain Tracking

		// Testing on localhost (Set to No)
		if (!$this->params->get('testing_localhost', 0))
		{
			$create = "\t".$global_object."('create', '".$tracking_id."', '".$this->domain."'".$cookie_settigns.");\n";

			// Track Multiple Domains
			if ($this->params->get('track_multiple_domains', 0))
			{
				$secondary_domains_list = $this->params->get('secondary_domains');
				if ($secondary_domains_list and str_replace(' ', '', $secondary_domains_list))
				{
					$site_domain = $this->remove_www($this->fqdn);
					if ($site_domain)
					{
						$secondary_domains = array();
						$lines = preg_split('/\s+/', $secondary_domains_list); // line and gaps on each
						if ($lines)
						{
							foreach ($lines as $line)
							{
								$line = $this->extract_fqdn($line);
								if ($line)
								{
									if ($line != $site_domain)
									{
										$secondary_domains[] = "'".$line."'";
									}
								}
							}
						}

						// Primary Domain
						if ($this->params->get('domain_type', 1) == 1)
						{
							if (!empty($secondary_domains))
							{
								$secondary_domains = array_unique($secondary_domains);
								$secondary_domains = implode(',', $secondary_domains);

								$create  = "\t".$global_object."('create', '".$tracking_id."', 'auto'".$cookie_settigns.");\n";
								$create .= "\t".$global_object."('require', 'linker');\n";
								$create .= "\t".$global_object."('linker:autoLink', [".$secondary_domains."]);\n";
							}
						}
						// Secondary Domain
						else
						{
							$create  = "\t".$global_object."('create', '".$tracking_id."', 'auto', { 'allowLinker': true });\n";
						}
					}
				}
			}
		}
		// Testing on localhost (Set to Yes)
		else
		{
			$create  = "\t".$global_object."('create', '".$tracking_id."', {\n";
			$create .= "\t\t'cookieDomain': 'none'\n";
			$create .= "\t});\n";
		}

		// --------------------------------------------------

		// Display Advertising Features
		$display_advertising = ($this->params->get('advertiser_support', 0) ? "	".$global_object."('require', 'displayfeatures');\n" : '');

		// Force SSL (HTTPS)
		$force_ssl = ($this->params->get('force_ssl', 0) ? "	".$global_object."('set', 'forceSSL', true);\n" : '');

		// Anonymize IP
		$anonymize_ip = ($this->params->get('anonymize_ip', 0) ? ",{'anonymizeIp': true}" : '');

		// --------------------------------------------------

		// Tracking Code
		$js  = "\t(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){\n";
		$js .= "\t(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\n";
		$js .= "\tm=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\n";
		$js .= "\t})(window,document,'script','//www.google-analytics.com/analytics.js','".$global_object."');\n";
		$js .= $create;
		$js .= $enhanced_link_attr;
		$js .= $display_advertising;
		$js .= $force_ssl;
		$js .= "\t".$global_object."('send', 'pageview'".$anonymize_ip.");";
		return $js;
	}

	// --------------------------------------------------

	private function set_code($js)
	{
		$js = ($this->is_html5() ? '<script>' : '<script type="text/javascript">')."\n".implode("\n", $js)."\n</script>\n";
		$tag = $this->code_tags();
		$js = $tag[0].$this->minify($js).$tag[1];

		$newer = version_compare(JVERSION, '3.2.0', '>=');
		$html = ($newer ? $this->app->getBody() : JResponse::getBody());
		$pos = strrpos($html, '</body>');
		if ($pos > 0)
		{
			$html = substr($html, 0, $pos)."\n".$js."\n\n".substr($html, $pos);
			$newer ? $this->app->setBody($html) : JResponse::setBody($html);
		}
		unset($html);
	}

	// --------------------------------------------------

	private function clean($str)
	{
		if (str_replace(' ', '', $str))
		{
			$str = trim($str);
			return filter_var($str, FILTER_SANITIZE_STRING);
		}

		return '';
	}

	// --------------------------------------------------

	private function clean_field($str)
	{
		$str = str_replace("\t", '', $str);
		return $str ? $this->clean($str) : '';
	}

	// --------------------------------------------------

	private function remove_scheme($url)
	{
		return str_replace(array('https://', 'http://'), '', $url);
	}

	// --------------------------------------------------

	private function extract_fqdn($str)
	{
		$str = trim($str, '/');
		$str = filter_var($str, FILTER_SANITIZE_URL);
		$str = $this->remove_scheme($str);

		$fqdn = strstr($str, '/', true);
		if ($fqdn)
		{
			$str = $fqdn;
		}

		return strtolower($str);
	}

	// --------------------------------------------------

	private function remove_www($url)
	{
		if (stripos($url, 'www.') === 0)
		{
			$url = substr_replace($url, '', 0, 4); // 4 = strlen('www.')
		}

		return $url;
	}

	// --------------------------------------------------

	private function domain()
	{
		if ((int)$this->params->get('domain', 1) == 1)
		{
			return $this->fqdn;
		}

		$domain = $this->extract_fqdn($this->params->get('domain_custom'));
		return $this->remove_www($domain);
	}

	// --------------------------------------------------

	private function fqdn()
	{
		if ($this->params->get('domain_fqdn', 1) == 1)
		{
			return parse_url($this->webroot, PHP_URL_HOST);
		}

		return $this->extract_fqdn($this->params->get('domain_fqdn_custom'));
	}

	// --------------------------------------------------

	private function set_urls()
	{
		$this->webroot = JUri::root();
		$this->fqdn = $this->fqdn();
		$this->domain = $this->domain();
	}

	// --------------------------------------------------

	private function cookie_domain()
	{
		$default = null;
		switch((int)$this->params->get('cookie_domain', 0))
		{
			case 0: $d = $default;
			case 1: $d = $this->fqdn; break;
			case 2: $d = $this->domain; break;
			case 3: $d = $this->extract_fqdn(JFactory::getConfig()->get('cookie_domain')); break;
			case 4: $d = $this->extract_fqdn($this->params->get('cookie_domain_custom')); break;
			default: $d = $default;
		}

		return $d;
	}

	// --------------------------------------------------

	private function cookie_name()
	{
		$param = 'cookie_name';
		if ((int)$this->params->get($param, 1) == 2) // Custom
		{
			$default = '_ga';
			$v = preg_replace('/[^a-zA-Z_]+/', '', $this->params->get($param.'_custom', $default));
			if ($v)
			{
				if ($v != $default)
				{
					return $v;
				}
			}
		} 
	}

	// --------------------------------------------------

	private function cookie_expires()
	{
		$param = 'cookie_expires';
		if ((int)$this->params->get($param, 1) == 2) // Custom
		{
			$default = 31536000; // 2 years in seconds
			$v = (int)$this->params->get($param.'_custom', $default);
			if ($v >= 0)
			{
				if ($v != $default)
				{
					return $v;
				}
			}
		}
	}

	// --------------------------------------------------

	private function cookie_path()
	{
		$param = 'cookie_path';
		$val = (int)$this->params->get($param, 1);

		// 1: Joomla Default
		// 2: Use Global
		// 3: Custom
		if ($val > 1)
		{
			$default = '/';
			$path = (($val == 2) ? JFactory::getConfig()->get($param) : $this->params->get($param.'_custom', $default));
			$path = str_replace('\\', '/', $path);
			$path = preg_replace('/[^0-9a-zA-Z_\/-]+/', '', $path);
			if ($path)
			{
				if ($path != $default)
				{
					return '/'.trim($path, '/').'/';
				}
			}
		}
	}

	// --------------------------------------------------

	private function ip()
	{
		$ip = $this->valid_ip('HTTP_CF_CONNECTING_IP');
		return $ip ? $ip : $this->valid_ip('REMOTE_ADDR'); // IP Through CloudFlare or Fallback to REMOTE_ADDR
	}

	// --------------------------------------------------

	private function valid_ip($header)
	{
		$ip = $this->server($header);
		if ($ip)
		{
			return filter_var($ip, FILTER_VALIDATE_IP); // IPv4 or IPv6
		}
	}

	// -----------------------------------------------------

	private function server($header)
	{
		if (isset($_SERVER[$header]) or !empty($_SERVER[$header]))
		{
			return $_SERVER[$header];
		}

		// Returns the value of the environment variable varname,
		// or FALSE if the environment variable varname does not exist
		return getenv($header);
	}

	// --------------------------------------------------

	private function check_data($str, $arr)
	{
		if ($str and $arr)
		{
			foreach ($arr as $s)
			{
				if (stripos($str, (string)$s) !== false)
				{
					return true;
				}
			}
		}
	}

	// --------------------------------------------------

	private function in_exclude_lists()
	{
		$ip = $this->ip();
		foreach(array('ip','ua','referrer','hostname') as $list)
		{
			if ($this->params->get('exclude_list_'.$list, 0))
			{
				$li = $this->clean_field($this->params->get('exclude_list_'.$list.'_txt'));
				if (!$li)
				{
					continue;
				}

				$li = $this->list_to_array($li);
				if (!$li)
				{
					continue;
				}

				switch($list)
				{
					case 'ip': if (in_array($ip, $li)) { return true; } break;
					case 'ua': if ($this->check_data($this->server('HTTP_USER_AGENT'), $li)) { return true; } break;
					case 'referrer': if ($this->check_data($this->server('HTTP_REFERER'), $li)) { return true; } break;
					case 'hostname': if ($this->check_data(gethostbyaddr($ip), $li)) { return true; } break;
				}
			}
		}
	}

	// --------------------------------------------------

	private function list_to_array($data)
	{
		$arr = array();
		$lines = preg_split('/\n/', $data); // each line
		foreach ($lines as $line)
		{
			$line = rtrim($line, "\n");
			$line = rtrim($line, "\r");
			if ($line)
			{
				$arr[] = $line;
			}
		}

		return array_unique($arr);
	}

	// --------------------------------------------------

	private function code_tags()
	{
		if ($this->params->get('code_tags', 1))
		{
			$tag = 'eorisis: Google Analytics';
			return array(
				"<!-- ".$tag." -->\n",
				"<!-- /".$tag." -->"
			);
		}

		return array('','');
	}

	// --------------------------------------------------

	private function minify($str)
	{
		if ($this->params->get('minify', 0))
		{
			$str = str_replace(array("\r\n","\n","\t"), '', $str);
			$str = str_replace("', '", "','", $str);
			$str = str_replace(', {', ',{', $str);
			$str = str_replace(': ', ':', $str);
			$str = str_replace(', ', ',', $str);
			$str = str_replace(' = ', '=', $str);
		}

		return $str;
	}

	// --------------------------------------------------

	private function area()
	{
		$area = $this->params->get('tracking_area', 1);
		if (!$area)
		{
			return;
		}

		if (($area == 3) or
			(($area == 1) and !$this->is_admin) or
			(($area == 2) and $this->is_admin))
		{
			return true;
		}
	}

	// --------------------------------------------------

	private function load_lang()
	{
		$e = 'plg_'.$this->app_type.'_'.$this->app_name;
		$l = JFactory::getLanguage();
		$l->load($e, JPATH_ADMINISTRATOR, 'en-GB', true);
		$l->load($e, JPATH_ADMINISTRATOR, null, true);
	}

	// --------------------------------------------------

	private function is_html5()
	{
		return (version_compare(JVERSION, 3, '>=') ? $this->doc->isHtml5() : false);
	}

	// --------------------------------------------------

	private function tracking_id()
	{
		if ($this->tracking_id === null)
		{
			$this->tracking_id = $this->clean($this->params->get('tracking_id'));
		}

		return $this->tracking_id;
	}

	// --------------------------------------------------

	private function optout_code()
	{
		// Disable tracking if the opt-out cookie exists
		if ($this->params->get('optout', 0))
		{
			$id = $this->tracking_id();
			if ($id)
			{
				$func = preg_replace('/[^a-zA-Z]+/', '', $this->params->get('optout_func', 'gaOptout'));
				if ($func)
				{
					$expires = (int)$this->params->get('optout_cookie_expires_custom', 80);
					$this->optout_cookie_name = 'ga-disable-'.$id;

					$js  = "\tvar disableStr = '".$this->optout_cookie_name."';\n";
					$js .= "\tif (document.cookie.indexOf(disableStr+'=true') > -1)\n";
					$js .= "\t{\n";
					$js .= "\t\twindow[disableStr] = true;\n";
					$js .= "\t}\n";
					$js .= "\tfunction ".$func."()\n";
					$js .= "\t{\n";
					$js .= "\t\tvar eo_date = new Date;\n";
					$js .= "\t\teo_date.setFullYear(eo_date.getFullYear() +".(($expires > 0) ? $expires : 80).");\n";
					$js .= "\t\tdocument.cookie = disableStr+'=true; expires='+eo_date.toGMTString()+'; path=/';\n";
					$js .= "\t\twindow[disableStr]=true;\n";
					$js .= "\t}";
					return $js;
				}
			}
		}

		return '';
	}

	// --------------------------------------------------

	private function optout_admin()
	{
		if (!$this->optout_code or !$this->is_admin)
		{
			return;
		}

		$this->load_lang();

		$js  = 'jQuery(function($,undefined)';
		$js .= '{';
		$js .=		'var eo_oo=$(".eo-optout");';
		$js .=		'var eo_done="'.JText::_('EO_OPTOUT_DONE').'";';
		$js .=		'if (document.cookie.indexOf(disableStr+"=true") >= 0)';
		$js .=		'{';
		$js .=			'eo_oo.html(eo_done);';
		$js .=		'}';
		$js .=		'else';
		$js .=		'{';
		$js .=			'eo_oo.on("click",function()';
		$js .=			'{';
		$js .=				'$(this).fadeOut(300,function()';
		$js .=				'{';
		$js .=					'$(this).html(eo_done).fadeIn(200);';
		$js .=				'});';
		$js .=			'});';
		$js .=		'}';
		$js .=	'});';
		$this->doc->addScriptDeclaration($this->optout_code."\n".$js);
	}
}
