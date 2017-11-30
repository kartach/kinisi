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

jimport('joomla.form.formfield');

// The class name must always be the same as the filename (in camel case)
class JFormFieldBasic extends JFormField
{
	protected $type = 'basic'; // The field class must know its own type through the variable $type
	protected $form_data;
	protected $doc;
	private $ext;
	private $xml;

	// --------------------------------------------------

	protected function getLabel()
	{
		return '';
	}

	// --------------------------------------------------

	protected function getInput()
	{
		$this->doc = JFactory::getDocument();

		// --------------------------------------------------

		$this->old_jversion_check();
		$this->get_plg_data();
		$this->load_lang();
		$this->add_css();
		$this->tracking_id_check();

		// --------------------------------------------------

		$xml_file = $this->read_file($this->ext->xml_file, true);
		if ($xml_file)
		{
			$this->xml = new SimpleXMLElement($xml_file);
			$this->add_js();
			$this->add_btn_doc();
			unset($xml_file);
			return $this->html();
		}
	}

	// --------------------------------------------------

	private function read_file($file, $chk = false)
	{
		if (!$chk)
		{
			return file_get_contents($file);
		}

		if (is_file($file))
		{
			return file_get_contents($file);
		}
	}

	// --------------------------------------------------

	private function info_link($text, $url, $extension = true)
	{
		$mail_url = (string)$this->xml->authorUrl.'/';
		if ($extension)
		{
			$mail_url .= (string)$this->xml->short_url;
			$url = $url ? '/'.$url : '';
		}

		return '<a href="'.$mail_url.$url.'" target="_blank" class="hasTooltip" title="'.JText::_('JBROWSERTARGET_NEW').'">'.$text.'</a>';
	}

	// --------------------------------------------------

	private function get_plg_data()
	{
		$this->ext = new stdClass;
		$this->ext->type = 'plugin';
		$this->ext->path_root = JPATH_ADMINISTRATOR;

		$element = $this->get_form_data('element');
		$folder = $this->get_form_data('folder');
		$ext_path = JPATH_SITE.'/plugins/'.$folder.'/'.$element.'/';

		$this->ext->class = 'plg_'.$folder.'_'.$element;
		$this->ext->xml_file = $ext_path.$element.'.xml';
		$this->ext->url = str_replace('_', '-', $element);
		$this->ext->framework_admin = $ext_path.'framework/admin/';
	}

	// --------------------------------------------------

	private function get_form_data($value)
	{
		if ($this->form_data)
		{
			return $this->form_data->get($value);
		}

		if (version_compare(JVERSION, '3.2', '>='))
		{
			$this->form_data = $this->form->getData();
			return $this->form_data->get($value);
		}

		return $this->form->getValue($value);
	}

	// --------------------------------------------------

	private function load_lang()
	{
		$l = JFactory::getLanguage();
		$l->load($this->ext->class, $this->ext->path_root, 'en-GB', true);
		$l->load($this->ext->class, $this->ext->path_root, null, true);
	}

	// --------------------------------------------------

	private function add_css()
	{
		$this->doc->addStyleSheet('//fonts.googleapis.com/css?family=Open+Sans:300', 'text/css', 'all');
		$css  = $this->read_file($this->ext->framework_admin.'css/styles.css');
		$css .= '.eo-hr{'.(version_compare(JVERSION, 3, '>=') ? 'width:220px;border-top:1px solid #eee' : 'display:block;color:#ddd;background:#eee;border:0').'}';
		$css .= '.eo-hr{clear:both;height:1px;font-size:0;margin:5px 0}';
		$css .= '.eo-help label{color:#ec8824}';
		$this->doc->addStyleDeclaration($css);
		unset($css);
	}

	// --------------------------------------------------

	private function add_js()
	{
		$js = $this->read_file($this->ext->framework_admin.'js/script.js');
		$js = str_replace('|JQUERY_VERSION|', (string)$this->xml->jquery_version, $js);
		$js = str_replace('|MIGRATE_VERSION|', (string)$this->xml->migrate_version, $js);
		$js = str_replace('|APP_URL|', $this->ext->url, $js);
		$js = str_replace('|APP_TYPE|', $this->ext->type, $js);
		$js = str_replace('|UPDATE_SITE_URL|', JUri::getInstance(JUri::root())->getScheme().'://'.(string)$this->xml->author.'/updates', $js);
		$js = str_replace('|EO_UPDATE_CHECKING|', JText::_('EO_UPDATE_CHECKING'), $js);
		$js = str_replace('|EO_NEW_VERSION_AVAILABLE|', JText::_('EO_NEW_VERSION_AVAILABLE'), $js);
		$js = str_replace('|EO_RELEASE_DATE|', JText::_('EO_RELEASE_DATE'), $js);
		$js = str_replace('|EO_RELEASE_NOTES|', JText::_('EO_RELEASE_NOTES'), $js);
		$js = str_replace('|EO_LATEST_VERSION|', JText::_('EO_LATEST_VERSION'), $js);
		$js = str_replace('|EO_LATEST|', JText::_('EO_LATEST'), $js);
		$js = str_replace('|ΕΟ_CONN_ERROR|', JText::_('ΕΟ_CONN_ERROR'), $js);
		$js = str_replace('|ΕΟ_CONN_ERROR_DSC|', JText::_('ΕΟ_CONN_ERROR_DSC'), $js);
		$js = str_replace('|EO_VISIT_MAIN_PAGE|', JText::_('EO_VISIT_MAIN_PAGE'), $js);
		$js = str_replace('|JBROWSERTARGET_NEW|', JText::_('JBROWSERTARGET_NEW'), $js);
		$this->doc->addScriptDeclaration($js);
		unset($js);
	}

	// --------------------------------------------------

	private function html()
	{
		$html  = '<script type="text/javascript">var installed_ver="'.(string)$this->xml->version.'"</script>';
		$html .= '<div class="eo-info">';
		$html .=	'<div id="eo-upd-chk">';
		$html .=		'<a href="#" class="hasTooltip" title="'.JText::_('EO_UPDATE_CHECK_TITLE').'"><h3>'.JText::_('EO_UPDATE_CHECK').'</a></h3>';
		$html .=	'</div>';
		$html .=	'<div id="srv-ver" class="ver">';
		$html .=		'<h3><span id="eo-ver-no"></span></h3>';
		$html .=		'<span id="eo-latest"></span>';
		$html .=		'<span id="eo-dl-upd"></span>';
		$html .=	'</div>';
		$html .=	'<div id="eo-release">';
		$html .=		'<span id="eo-rel-date"></span>';
		$html .=		'<span id="eo-rel-notes"></span>';
		$html .=		'<span id="eo-infourl"></span>';
		$html .=	'</div>';
		$html .=	'<hr>';
		$html .=	'<span class="group">';
		$html .=		'<h5>'.JText::_('EO_VERSION_INSTALLED').': '.(string)$this->xml->version.' ('.(string)$this->xml->creationDate.')</h5>';
		$html .=		'<p>';
		$html .=			JText::_('EO_COMPAT_J4').'<br />';
		$html .=			JText::_('EO_COMPATIBILITY').': '.(string)$this->xml->compatibility;
		$html .=		'</p>';
		$html .=	'</span>';
		$html .=	'<span class="group"><h4>';
		$html .=		$this->info_link(JText::_('EO_DOWNLOAD'), '').' - '.
						$this->info_link(JText::_('EO_DOC'), 'doc').' - '.
						$this->info_link(JText::_('EO_CHANGELOG'), 'changelog').'</h4>';
		$html .=		'<h4>'.JText::_('EO_SUPPORT').': <a href="mailto:'.(string)$this->xml->authorEmail.'" target="_top">'.(string)$this->xml->authorEmail.'</a></h4>';
		$html .=		'<h4>'.JText::_('EO_RATE').' '.$this->info_link(JText::_('EO_JED'), 'jed').'</h4>';
		$html .=		'<h4>'.JText::_('EO_SUPPORT_DEV').': '.$this->info_link(JText::_('EO_DONATE'), 'donate', false).'</h4>';
		$html .=		'<br />';
		$html .=		str_replace('(C)', '&copy;', (string)$this->xml->copyright);
		$html .=	'</span>';
		$html .=	'<br />';
		$html .=	'<hr>';
		$html .=	'<br />';
		$html .=	'<h3>eorisis: Joomla! '.JText::_('EO_EXTENSIONS').':</h3>';
		$html .=	'<h3><a href="https://eorisis.com/web-design/joomla-extensions" target="_blank" class="hasTooltip" title="'.JText::_('JBROWSERTARGET_NEW').'">https://eorisis.com/web-design/joomla-extensions</a></h3>.';
		$html .= '</div>';
		return $html;
	}

	// --------------------------------------------------

	private function add_btn_doc()
	{
		$bar = JToolbar::getInstance('toolbar');
		$bar->appendButton('Popup', 'help', 'EO_DOC', (string)$this->xml->authorUrl.'/'.(string)$this->xml->short_url.'/doc');
	}

	// --------------------------------------------------

	private function old_jversion_check()
	{
		// Joomla 3.2.4 showon fields
		// Joomla 3.3.1 fieldset descriptions
		if (version_compare(JVERSION, '3.3.1', '<'))
		{
			JFactory::getApplication()->enqueueMessage(JText::_('EO_JVERSION_OLD').' '.JVERSION.'. '.JText::_('EO_JUPGRADE'), 'warning');
		}
	}

	// --------------------------------------------------

	private function tracking_id_check()
	{
		if (JPluginHelper::isEnabled('system','eorisis_google_analytics'))
		{
			$params = $this->get_form_data('params');
			if ($params and empty($params->tracking_id))
			{
				JFactory::getApplication()->enqueueMessage(JText::_('EO_TRACKING_ID_MISSING_TXT'), 'notice');
			}
		}
	}
}
