<?php
/**
 * Kunena Component
 * @package     Kunena.Template.Crypsis
 * @subpackage  Layout.Widget
 *
 * @copyright   (C) 2008 - 2017 Kunena Team. All rights reserved.
 * @license     http://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @link        https://www.kunena.org
 **/
defined('_JEXEC') or die;
?>
<div class="navbar">
	<div class="navbar-inner">
		<div class="visible-desktop">
			<?php echo $this->subRequest('Widget/Menu'); ?>
			<?php if (KunenaFactory::getTemplate()->params->get('displayDropdownMenu')) :?>
				<?php echo $this->subRequest('Widget/Login'); ?>
			<?php endif; ?>
		</div>
		<div class="hidden-desktop">
			<div class="nav navbar-nav pull-left">
				<div><a class="btn btn-link" data-toggle="collapse" data-target=".knav-collapse"><?php echo KunenaIcons::hamburger();?></a></div>
				<div class="knav-collapse"><?php echo $this->subRequest('Widget/Menu'); ?></div>
			</div>
			<?php if (KunenaFactory::getTemplate()->params->get('displayDropdownMenu')) :?>
				<?php echo $this->subRequest('Widget/Login'); ?>
			<?php endif; ?>
		</div>
	</div>
</div>
