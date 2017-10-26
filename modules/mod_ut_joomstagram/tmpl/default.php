<?php
/**
* @package 		Joomla.site
* @subpackage 	mod_ut_spectragram
* @version		1.0.0
* @created		September 2017
* @author		Unitemplates
* @email		info@unitemplates.com
* @website		http://www.unitemplates.com
* @copyright	Copyright (C) 2012 - 2015 Unitemplates. All rights reserved.
* @license		GNU General Public License version 2 or later.
*/
defined('_JEXEC') or die;
//variables
$type_user = $params->get('jg_feed_source') =='getUserFeed';
$type_tag = $params->get('jg_feed_source') == 'getRecentTagged';
$padding = $params->get('jg_padding');
$columns = $params->get('jg_columns');
$rows = $params->get('jg_rows');

$margins = explode(' ', $padding);
$margin = '';
foreach ($margins as $key => $value) {
	$margin .= '-'.$value.' ';
}
$style = 'ul#feed-'.$module->id.' > li{padding:'.$padding.';}';
$style .= 'ul#feed-'.$module->id.'{margin:'.$margin.';}';


$doc = JFactory::getDocument();
$doc->addStyleSheet('modules/mod_ut_joomstagram/assets/css/joomstagram.css');
$doc->addStyleDeclaration($style);
$doc->addScript('modules/mod_ut_joomstagram/assets/js/spectragram.js');

?>

<div id="ut-jg-<?php echo $module->id;?>" class="ut-spectragram <?php echo $class_sfx;?>">
	<?php if($params->get('add_container')){echo '<div class="container">';}?>

		<?php if ($params->get('jg_intro')):?>
			<div class="jg-intro">
				<p><?php echo $params->get('jg_intro');?></p>
			</div>
		<?php endif;?>

		<div class="jg-photo-ct">
			<ul id="feed-<?php echo $module->id;?>" class="clearfix">
			<!-- load instagram photos here -->
			</ul>
		</div>
	<?php if($params->get('jg_add_container')){echo '</diV>';}?>

	<script>
		jQuery(function(){
			// Configure your accessData with accessToken and clientID
			jQuery.fn.spectragram.accessData = {
				accessToken: '<?php echo $params->get("jg_access_token");?>',
				clientID: '<?php echo $params->get("jg_client_id");?>'
			};
			
			// Search and Display data from instagram
			jQuery('#feed-<?php echo $module->id;?>').spectragram('<?php echo $params->get("jg_feed_source");?>',{
				query: '<?php if($type_user){echo $params->get("jg_user");}?><?php if($type_tag){echo $params->get("jg_tag");}?>',
				max:<?php echo $columns * $rows;?>,
				size:'<?php echo $params->get("jg_photo_size");?>',
				wrapEachWith: '<li class="col-xs-6 col-sm-<?php echo 12 / $columns;?>"></li>'
			});
			
		});
	</script>
</div>