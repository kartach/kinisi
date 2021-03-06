<?php
/**
 * Bootstrap Tabs
 *
 * @author    TemplateMonster http://www.templatemonster.com
 * @copyright Copyright (C) 2012 - 2013 Jetimpex, Inc.
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 
 * Parts of this software are based on Articles Newsflash standard module
 * 
*/

defined('_JEXEC') or die; 

?>

<?php if ($params->get('pretext')): ?>
  <div class="pretext">
    <?php echo $params->get('pretext') ?>
  </div>
  <?php endif; ?>

<ul class="nav nav-tabs" id="bootstrap_tabs_nav_<?php echo $module->id; ?>">
	<?php for ($i = 0, $n = count($list); $i < $n; $i ++) :
	$item = $list[$i]; 
	$item_images = json_decode($item->images);?>
	<li<?php if($i == 0) echo ' class="active"'; ?>><a data-toggle="tab" href="#tab<?php echo ($i+1).'-'.$module->id; ?>">
	<?php if ($params->get('intro_image')): ?>
		<?php  if (isset($item_images->image_intro) and !empty($item_images->image_intro)) : ?>
		<?php $imgfloat = (empty($item_images->float_intro)) ? $params->get('float_intro') : $item_images->float_intro; ?>
			
				<img
				<?php if ($item_images->image_intro_caption):
					echo 'class="caption"'.' title="' .htmlspecialchars($item_images->image_intro_caption) .'"';
				endif; ?>
				src="<?php echo htmlspecialchars($item_images->image_intro); ?>" alt="<?php echo htmlspecialchars($item_images->image_intro_alt); ?>"/>
		<?php endif; ?>
	<?php endif; ?>
	</a></li>
	<?php endfor; ?>
</ul>

<div class="tab-content" id="bootstrap_tabs_content_<?php echo $module->id; ?>">
	<?php for ($i = 0, $n = count($list); $i < $n; $i ++) :
	$item = $list[$i]; ?>
	<div class="tab-pane fade<?php if($i == 0) echo ' active in'; ?>" id="tab<?php echo ($i+1).'-'.$module->id; ?>">
		<?php require JModuleHelper::getLayoutPath('mod_bootstraptabs', '_custom'); ?>
	</div>
	<?php endfor; ?>
</div>

  <div class="clearfix"></div>