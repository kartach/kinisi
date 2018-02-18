<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_breadcrumbs
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

JHtml::_('bootstrap.tooltip');
$app    = JFactory::getApplication(); 
$doc = JFactory::getDocument();
$document =& $doc;
?>

<div class="shell">

<ul class="breadcrumb<?php echo $moduleclass_sfx; ?>">
	<?php
	if ($params->get('showHere', 1))
	{
		echo '<li class="active">' . JText::_('MOD_BREADCRUMBS_HERE') . '</li>';
	}

	// Get rid of duplicated entries on trail including home page when using multilanguage
	for ($i = 0; $i < $count; $i++)
	{
		if ($i == 1 && !empty($list[$i]->link) && !empty($list[$i - 1]->link) && $list[$i]->link == $list[$i - 1]->link)
		{
			unset($list[$i]);
		}
	}

	// Find last and penultimate items in breadcrumbs list
	end($list);
	$last_item_key = key($list);
	prev($list);
	$penult_item_key = key($list);

	// Make a link if not the last item in the breadcrumbs
	$show_last = $params->get('showLast', 1);

	// Generate the trail
	foreach ($list as $key => $item) :
	if ($key != $last_item_key)
	{
		// Render all but last item - along with separator
		/*echo '<li>';
		if (!empty($item->link))
		{
			echo '<a href="' . $item->link . '" class="pathway">' . $item->name . '</a>';
		}
		else
		{
			echo '<span>' . $item->name . '</span>';
		}

		if (($key != $penult_item_key) || $show_last)
		{
			echo '<span class="divider">&nbsp;|&nbsp;</span>';
		}

		echo '</li>';*/
	}
	elseif ($show_last)
	{
		// Render last item if reqd.
		echo '<li class="page-title">';
		echo '<span>' . $item->name . '</span>';
		echo '</li>';
	}
	endforeach; ?>
</ul>
</div>

<?php
	$js = "
		;(function($){
			$(document).ready(function(){
				var varCount=30;
				var pageTitle=$('.page-title');
				var header=pageTitle.children()[0];
				var wrapper=$(document.createElement('div'));
					wrapper.addClass('page-title-inner');
				var pageTitleLeft=$(document.createElement('div')),
					pageTitleCenter=$(document.createElement('div')),
					pageTitleRight=$(document.createElement('div'));
					pageTitleLeft.addClass('page-title-left');
					pageTitleCenter.addClass('page-title-center');
					pageTitleRight.addClass('page-title-right');
				for(var j=0;j<varCount;j++){
					pageTitleLeft.append(header.cloneNode(true));
					pageTitleRight.append(header.cloneNode(true));
				}
				pageTitleCenter.append(header.cloneNode(true));
				pageTitle.children(0).remove();
				wrapper.append(pageTitleLeft);
				wrapper.append(pageTitleCenter);
				wrapper.append(pageTitleRight);
				pageTitle.append(wrapper);
			});
		})(jQuery);
	";
	$document->AddScriptDeclaration($js);
?>
