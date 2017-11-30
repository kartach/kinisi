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
class JFormFieldOptout extends JFormField
{
	// The field class must know its own type through the variable $type.
	protected $type = 'optout';

	// --------------------------------------------------

	protected function getLabel()
	{
		return '';
	}

	// --------------------------------------------------

	protected function getInput()
	{
		if (JPluginHelper::isEnabled('system','eorisis_google_analytics'))
		{
			$html = JText::_('EO_OPTOUT_REQ');

			$p = JPluginHelper::getPlugin('system','eorisis_google_analytics');
			$params = new JRegistry($p->params);
			if ($params->get('optout', 0))
			{
				if ($this->clean($params->get('tracking_id')))
				{
					$func = preg_replace('/[^a-zA-Z]+/', '', $params->get('optout_func', 'gaOptout'));
					if ($func)
					{
						$js  = 'jQuery(function($,undefined)';
						$js .= '{';
						$js .=		'$("#excl").on("click",function()';
						$js .=		'{';
						$js .=			$func.'();';
						$js .=		'});';
						$js .= '});';
						JFactory::getDocument()->addScriptDeclaration($js);
						$html = '<a href="#" id="excl">'.JText::_('EO_OPTOUT_LINK_TXT').'</a>';
					}
				}
				else
				{
					$html = JText::_('EO_TRACKING_ID_MISSING');
				}
			}
		}
		else
		{
			$html = JText::_('EO_OPTOUT_DISABLED');
		}

		return '<div class="eo-optout">'.$html.'</div>';
	}

	// --------------------------------------------------

	private function clean($str)
	{
		$str = trim($str);
		return filter_var($str, FILTER_SANITIZE_STRING);
	}
}
