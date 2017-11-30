<?php
/**
 * @package         ReReplacer
 * @version         8.2.2
 * 
 * @author          Peter van Westen <info@regularlabs.com>
 * @link            http://www.regularlabs.com
 * @copyright       Copyright © 2017 Regular Labs All Rights Reserved
 * @license         http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */

defined('_JEXEC') or die;

/**
 * Item Table
 */
class ReReplacerTableItem extends JTable
{
	/**
	 * Constructor
	 *
	 * @param    object    Database object
	 *
	 * @return    void
	 */
	public function __construct(&$db)
	{
		parent::__construct('#__rereplacer', 'id', $db);
	}

	/**
	 * Overloaded check function
	 *
	 * @return boolean
	 */
	public function check()
	{
		$this->name   = trim($this->name);
		$this->search = trim($this->search);

		// Check for valid name
		if (empty($this->name))
		{
			$this->setError(JText::_('RR_THE_ITEM_MUST_HAVE_A_NAME'));

			return false;
		}


		if (trim($this->search) == '')
		{
			$this->setError(JText::_('RR_THE_ITEM_MUST_HAVE_SOMETHING_TO_SEARCH_FOR'));

			return false;
		}

		return true;
	}
}
