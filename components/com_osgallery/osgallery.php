<?php
/**
* @package OS Gallery
* @copyright 2016 OrdaSoft
* @author 2016 Andrey Kvasnevskiy(akbet@mail.ru),Roman Akoev (akoevroman@gmail.com)
* @license This component is released under License from included LICENSE.txt file
* @description Ordasoft Image Gallery
*/

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

// Set some global property
$document = JFactory::getDocument();

// require helper file
JLoader::register('osGalleryHelperSite', JPATH_COMPONENT . '/helpers/osGalleryHelperSite.php');
JLoader::register('osGallerySocialButtonsHelper', JPATH_COMPONENT . '/helpers/osGallerySocialButtonsHelper.php');
// Perform the Request task
// print_r($_REQUEST);exit;
$input = JFactory::getApplication()->input;
$task = $input->getCmd('task', '');
$view = $input->getCmd('view', '');
if(!$task && $view)$task = $view;

switch ($task) {
    case "defaultTabs":
        osGalleryHelperSite::displayView();
        break;
        
    case "loadMoreButton":
        osGalleryHelperSite::displayView();
        break;

    default:
        echo 'error: '.$task;
        break;
}