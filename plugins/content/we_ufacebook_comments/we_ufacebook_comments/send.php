<?php
/**
 * @package     Ultimate Facebook J!Comments
 * @version     1.3.27
 * @author      Stergios Zgouletas <info@web-expert.gr>
 * @link        http://www.web-expert.gr
 * @copyright   Copyright (C) 2010 Web-Expert.gr All Rights Reserved
 * @license     http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */
@header('Content-Type: text/html; charset=utf-8');
define('_JEXEC', 1);
define('DS', DIRECTORY_SEPARATOR);
list($root,$path)=explode(DS.'plugins',dirname(__FILE__));
define('JPATH_BASE', $root);
require_once( JPATH_BASE.DS.'includes'.DS.'defines.php' );
require_once( JPATH_BASE.DS.'includes'.DS.'framework.php' );
$mainframe =JFactory::getApplication('site');
$mainframe->initialise();

if(!class_exists('JParameter')){
	$url =$mainframe->input->get('url','','string');
	$comment=$mainframe->input->get('comment','','string');
	$commentid=$mainframe->input->get('comid',0,'int');
	$sessid=$mainframe->input->get('sessid','','string');
}else{
	$url=JRequest::getVar('url','');
	$comment=JRequest::getVar('comment','');
	$commentid=JRequest::getInt('comid',0);
	$sessid=JRequest::getVar('sessid','');
}
$session = JFactory::getSession();
$access=$session->get('access','');

jimport('joomla.plugin.helper');
if(JPluginHelper::isEnabled('content','we_ufacebook_comments') && !empty($access) && $access==md5($_SERVER['HTTP_USER_AGENT']) && $sessid==$session->getId()){
	$plugin = JPluginHelper::getPlugin('content', 'we_ufacebook_comments');
	$params = class_exists('JParameter') ? new JParameter($plugin->params) : new JRegistry($plugin->params);
	$recipient=explode(',',JString::trim($params->get('emails','')));
	if(!count($recipient)) return;
	$config = JFactory::getConfig();
	if(version_compare(JVERSION,'1.6.0') < 0){
		$sender = array($config->getValue('sitename'),$config->getValue('fromname'));
	}else{
		$sender = array($config->get('sitename'),$config->get('fromname'));
	}	
	$mailer = JFactory::getMailer();
	$mailer->setSender($sender);
	$mailer->addRecipient($recipient);
 	$body= "New Comment:\n".strip_tags($comment);
	$body.= "\n\nArticle URL:\n".$url.((JString::strpos($url,'?')===false)?'?':'&').'fb_action_ids='.$commentid.'&fb_action_types=og.comments';
	$body.= "\n\nUltimate Facebook Comments Plugin for Joomla";
	$mailer->setSubject($params->get('subject','New comment - '.$commentid));
	$mailer->setBody($body);
	$send = $mailer->Send();
	echo ($send !== true )?'NOK':'OK';
}else{
	die( 'Restricted access' );
}
$mainframe->close();