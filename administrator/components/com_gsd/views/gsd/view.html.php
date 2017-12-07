<?php

/**
 * @package         Google Structured Data
 * @version         3.1.1 Free
 * 
 * @author          Tassos Marinos <info@tassos.gr>
 * @link            http://www.tassos.gr
 * @copyright       Copyright © 2017 Tassos Marinos All Rights Reserved
 * @license         GNU GPLv3 <http://www.gnu.org/licenses/gpl.html> or later
*/

defined('_JEXEC') or die('Restricted access');
jimport('joomla.application.component.view');
require_once JPATH_COMPONENT_ADMINISTRATOR . '/helpers/dashboard.php';
 
/**
 * Dashboard View
 */
class GSDViewGSD extends JViewLegacy
{
    /**
     * Items view display method
     * 
     * @param   string  $tpl  The name of the template file to parse; automatically searches through the template paths.
     * 
     * @return  mixed  A string if successful, otherwise a JError object.
     */
    function display($tpl = null)
    {
        $this->sidebar = GSDHelper::renderSideBar();
        $this->stats   = GSDDashboard::getStats();

        // Check for errors.
        if (count($errors = $this->get('Errors')))
        {
            JFactory::getApplication()->enqueueMessage(implode("\n", $errors), 'error');
            return false;
        }

        // Set the toolbar
        $this->addToolBar();

        // Display the template
        parent::display($tpl);
    }

    /**
     *  Add Toolbar to layout
     */
    protected function addToolBar() 
    {
        $canDo = GSDHelper::getActions();

        JToolBarHelper::title(JText::_('GSD'));

        if ($canDo->get('core.admin'))
        {
            JToolbarHelper::preferences('com_gsd');
        }

        JToolbarHelper::help("Help", false, "http://www.tassos.gr/joomla-extensions/google-structured-data-markup/docs");
    }
}