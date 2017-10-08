<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_owl_carousel
 *
 * @copyright   Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
$item_images = json_decode($item->images);
require_once (JPATH_BASE.'/components/com_content/helpers/icon.php');
jimport( 'joomla.filter.filteroutput' );

	
if ($params->get('intro_image')):
if (isset($item_images->image_intro) and !empty($item_images->image_intro)) :
$imgfloat = (empty($item_images->float_intro)) ? $params->get('float_intro') : $item_images->float_intro; ?>
<!-- Intro Image -->
<figure class="item_img img-intro img-intro__<?php echo htmlspecialchars($imgfloat); ?>"> 
	<?php if ($params->get('link_titles') && $item->readmore) : ?>
	<a href="<?php echo $item->link;?>">
	<?php endif; ?>
		<img src="<?php echo htmlspecialchars($item_images->image_intro); ?>" alt="<?php echo htmlspecialchars($item_images->image_intro_alt); ?>">
		<?php if ($item_images->image_intro_caption): ?>
		<figcaption><?php echo htmlspecialchars($item_images->image_intro_caption); ?></figcaption>
		<?php endif;
	if ($params->get('link_titles') && $item->readmore) : ?>
	</a>
	<?php endif; ?>
</figure>
<?php elseif ($item_images->image_intro_caption) : ?>
<i class="<?php echo $item_images->image_intro_caption; ?>"></i>
<?php endif;
endif; ?>