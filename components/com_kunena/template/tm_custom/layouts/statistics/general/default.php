<?php
/**
 * Kunena Component
 * @package     Kunena.Template.Crypsis
 * @subpackage  Layout.Statistics
 *
 * @copyright   (C) 2008 - 2017 Kunena Team. All rights reserved.
 * @license     https://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @link        https://www.kunena.org
 **/
defined('_JEXEC') or die;
?>
<div class="statistics">
<div class="h1-heading">
	<?php echo JText::_('COM_KUNENA_STATISTICS');?>
</div>
	<?php foreach ($this->top as $top) : ?>
		<div class="h3-heading">
			<?php echo $top[0]->title; ?>
		</div>

		<table class="table table-striped table-bordered">
			<thead>
			<tr>
				<th class="col-md-1 center">#</th>
				<th class="col-md-5"><?php echo $top[0]->titleName; ?></th>
				<th class="col-md-6"><?php echo $top[0]->titleCount; ?></th>
			</tr>
			</thead>
			<tbody>

			<?php foreach ($top as $id => $item) : ?>
				<tr>
					<td class="center">
						<?php echo $id + 1; ?>
					</td>
					<td>
						<?php echo $item->link; ?>
					</td>
					<td>
						<div class="progress">
							<div class="progress-bar" role="progressbar" style="width: <?php echo $item->percent; ?>%;"><?php echo $item->count; ?></div>
						</div>
					</td>
				</tr>
			<?php endforeach; ?>

			</tbody>
		</table>
	<?php endforeach; ?>
	<?php if ($this->config->showgenstats) : ?>
		<div class="h3-heading">
			<?php echo JText::_('COM_KUNENA_STATISTICS'); ?>
		</div>

		<div class="well well-small">
			<?php echo JText::_('COM_KUNENA_STAT_TOTAL_USERS'); ?>:
			<b>

				<?php if ($this->userlistUrl) : ?>
					<a href="<?php echo $this->userlistUrl; ?>"><?php echo $this->memberCount; ?></a>
				<?php else : ?>
					<?php echo $this->memberCount; ?>
				<?php endif; ?>

			</b>

			<?php echo JText::_('COM_KUNENA_STAT_LATEST_MEMBERS'); ?>:
			<b><?php echo $this->latestMemberLink ?></b>

			<br/>

			<?php echo JText::_('COM_KUNENA_STAT_TOTAL_MESSAGES'); ?>:
			<b><?php echo (int) $this->messageCount; ?></b>

			<?php echo JText::_('COM_KUNENA_STAT_TOTAL_SUBJECTS'); ?>:
			<b><?php echo (int) $this->topicCount; ?></b>

			<?php echo JText::_('COM_KUNENA_STAT_TOTAL_SECTIONS'); ?>:
			<b><?php echo (int) $this->sectionCount; ?></b>

			<?php echo JText::_('COM_KUNENA_STAT_TOTAL_CATEGORIES'); ?>:
			<b><?php echo (int) $this->categoryCount; ?></b>

			<br/>

			<?php echo JText::_('COM_KUNENA_STAT_TODAY_OPEN_THREAD'); ?>:
			<b><?php echo (int) $this->todayTopicCount; ?></b>

			<?php echo JText::_('COM_KUNENA_STAT_YESTERDAY_OPEN_THREAD'); ?>:
			<b><?php echo (int) $this->yesterdayTopicCount; ?></b>

			<?php echo JText::_('COM_KUNENA_STAT_TODAY_TOTAL_ANSWER'); ?>:
			<b><?php echo (int) $this->todayReplyCount; ?></b>

			<?php echo JText::_('COM_KUNENA_STAT_YESTERDAY_TOTAL_ANSWER'); ?>:
			<b><?php echo (int) $this->yesterdayReplyCount; ?></b>
		</div>
	<?php endif; ?>

</div>
