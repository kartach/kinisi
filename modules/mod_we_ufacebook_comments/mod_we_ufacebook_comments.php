<?php
/**
 * @package     Ultimate Facebook J!Comments Module
 * @version     1.3.5
 * @author      Stergios Zgouletas <info@web-expert.gr>
 * @link        http://www.web-expert.gr
 * @copyright   Copyright (C) 2010 Web-Expert.gr All Rights Reserved
 * @license     http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */
defined( '_JEXEC' ) or die( 'Restricted access' );
$dispatcher = JDispatcher::getInstance();
JPluginHelper::importPlugin('content','we_ufacebook_comments');
$item= new stdClass;
$item->text='<p>'.$params->get('textbefore','').'</p><p class="modwefbcommentsp">{ultimatewecomments}</p>';
$item->context='mod_we_ufacebook_comments';
$limitstart=0;
if (version_compare(JVERSION, '1.6', 'lt'))
{
	$dispatcher->trigger('onPrepareContent', array(
		&$item,
		&$params,
		$limitstart
	));
}
else
{
	//$item->text = JHtml::_('content.prepare',$item->text,'', 'mod_we_ufacebook_comments');
	$dispatcher->trigger('onContentPrepare', array(
		$item->context,
		&$item,
		&$params,
		$limitstart
	));
}   
$fbcomments='<div class="modwefbcomments '.$params->get('moduleclass_sfx','').'">'.$item->text.'</div>';
?>
<!--Start Ultimate Facebook J!Comments Module -->
<?php echo $fbcomments; ?>
<!--End Ultimate Facebook J!Comments Module -->
