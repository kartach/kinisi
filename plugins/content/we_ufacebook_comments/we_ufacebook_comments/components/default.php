<?php
/**
 * @package     Ultimate Facebook Comments
 * @version     1.1
 * @author      Stergios Zgouletas <info@web-expert.gr>
 * @link        http://www.web-expert.gr
 * @copyright   Copyright (C) 2010 Web-Expert.gr All Rights Reserved
 * @license     http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */
defined( '_JEXEC' ) or die( 'Restricted access' );
function we_comments_output(&$article,$config,$output){
	return false;
}
function we_comments_showonly($config){return false;} //do nothing
#This Functions Includes / Excludes execution
function we_comments_inexclude(&$article,$config){return false;}
?>