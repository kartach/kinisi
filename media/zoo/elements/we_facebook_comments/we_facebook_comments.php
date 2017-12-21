<?php
/**
 * @package     Ultimate Facebook J!Comments (Zoo Element)
 * @version     1.3.22
 * @author      Stergios Zgouletas <info@web-expert.gr>
 * @link        http://www.web-expert.gr
 * @copyright   Copyright (C) 2010 Web-Expert.gr All Rights Reserved
 * @license     http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */
 
class ElementWe_facebook_comments extends Element implements iSubmittable {

	public function render($params = array()) {
		jimport( 'joomla.filesystem.file' );
		$pluginPath=version_compare(JVERSION, '1.6', 'ge')?'we_ufacebook_comments'. DIRECTORY_SEPARATOR.'we_ufacebook_comments.php':'we_ufacebook_comments.php';
		$isInstalled=JFile::exists(JPATH_ROOT.DIRECTORY_SEPARATOR.'plugins'.DIRECTORY_SEPARATOR.'content'.DIRECTORY_SEPARATOR.$pluginPath);
	
		if($this->get('value',$this->config->get('default')) && $isInstalled) {
			$params = $this->app->data->create($params);
			$item=version_compare(PHP_VERSION, '5.0.0', '>=')?clone $this->_item:$this->_item;			
			$item->context='com_zoo.element.wefbcomments';

			$dispatcher =  version_compare(JVERSION,'3.0','ge')?JEventDispatcher::getInstance():JDispatcher::getInstance();
			$found=JPluginHelper::importPlugin('content','we_ufacebook_comments'); 
			if(version_compare(JVERSION, '1.6', 'ge')){
				$dispatcher->trigger('onContentPrepare', array($item->context,&$item,&$params,JRequest::getInt('limitstart',0)));  //J2.5+
			}else{
				$dispatcher->trigger('onPrepareContent', array(&$item,&$params,JRequest::getInt('limitstart',0))); //J1.5
			}
			if(isset($item->facebookComments)) return $item->facebookComments;
		}
		return null;
	}

	public function edit() {
		return $this->app->html->_('select.booleanlist', $this->getControlName('value'), '', $this->get('value', $this->config->get('default')));
	}

	public function renderSubmission($params = array()) {
        return $this->edit();
	}

	public function validateSubmission($value, $params) {
		return array('value' => (bool) $value->get('value'));
	}
}