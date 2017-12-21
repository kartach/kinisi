<?php
/**
 * @package     Ultimate Facebook J!Comments
 * @version     1.3.31
 * @author      Stergios Zgouletas <info@web-expert.gr>
 * @link        http://www.web-expert.gr
 * @copyright   Copyright (C) 2010 Web-Expert.gr All Rights Reserved
 * @license     http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */
defined( '_JEXEC' ) or die( 'Restricted access' );
if(!defined('DS')) define('DS',DIRECTORY_SEPARATOR);
jimport( 'joomla.plugin.plugin' );
jimport('joomla.filesystem.file');
class plgContentWe_ufacebook_comments extends JPlugin {
	
	public function __construct( &$subject, $params ) {
		parent::__construct( $subject, $params );
		$this->JVersion();
		$app =JFactory::getApplication();
		$jlang =JFactory::getLanguage();
		$jlang->load('plg_content_we_ufacebook_comments', JPATH_ADMINISTRATOR, 'en-GB', true);
		$jlang->load('plg_content_we_ufacebook_comments', JPATH_ADMINISTRATOR, $jlang->getDefault(), true);
		$jlang->load('plg_content_we_ufacebook_comments', JPATH_ADMINISTRATOR, null, true);
		$deleteCache=version_compare(JVERSION, '2.5', 'ge')?$app->input->getInt('delete',0):JRequest::getInt('delete',0);
		if($deleteCache){
			$deleted=$this->deleteCache();
			echo '<div class="alert alert-success">Cache Files Deleted:'.$deleted.'</div>';
			$app->close();
		}
		$option=version_compare(JVERSION, '2.5', 'ge')?$app->input->getCMD('option'):JRequest::getCMD('option');
		$this->we_loadcomp_comments($option);
	}
	
	function deleteCache(){
		jimport('joomla.filesystem.folder');
		$files=JFolder::files(JPATH_SITE.DIRECTORY_SEPARATOR.'cache','.txt',false,true);
		$deleted=array();
		foreach($files as $file){
			if(JString::strpos($file,'plg_ufb_')!==false){
				$deleted[]=(int)JFile::delete($file);
			}
		}
		return array_sum($deleted);
	}
	
	#Joomla 1.5
	public function onPrepareContent( &$row, &$params, $limitstart ) {
		$document =JFactory::getDocument();
		if($document->getType()!='html') return;
		if(!isset($row->context)) $row->context='';
		if(JRequest::getCmd('option')=='com_zoo' && $row->context!='com_zoo.element.wefbcomments') return;
		if(JRequest::getCMD('option')=='com_k2' && get_class($row)=='TableK2Category') return;
		
		$config=$this->we_comments_getconfig();
		$config["currentpage"]=$this->getComURL($row,$config);	
		$output='';
		if($row->context!='mod_we_ufacebook_comments' && we_comments_inexclude($row,$config) && we_comments_showonly($config) && !version_compare(JVERSION, '1.5', 'gt')){ //allow to execute
			$output=$this->we_comments_OutputData($row,$config,true);
		}
		if($config['debug']){
			$social = new UltimateSocialComments();
			$social->debugme("Joomla 1.5");
			$social->debugme("RowOBject:".htmlentities(print_r($row,true)));
			$debug=$social->debugme("Pligin Config:".print_r($config,true),true);
			if(isset($row->text)) $row->text.=$debug; else echo $debug;
		}
		//Merge Module Params
		if($row->context=='mod_we_ufacebook_comments'){
			$config=$this->we_comments_getconfig($params);
			$config["currentpage"]=$this->getComURL($row,$config);
			$output="";
		}
		//AnywhereTag
		if(empty($output)) $output=$this->we_comments_OutputData($row,$config,false);
		if(!defined('ULTIMATEWECOMMENTS')){
			define('ULTIMATEWECOMMENTS',$output);
		}
		if(JString::strpos($row->text,'{ultimatewecomments}')!==false && !version_compare(JVERSION, '1.5', 'gt')){
			$row->text=str_replace('{ultimatewecomments}',$output,$row->text);
		}
		if(!empty($output)) $row->facebookComments=$output; //Zoo Element Compatibility
	}
	
	#Joomla 1.6.x / 1.7.x / 2.5.x / 3.x
	public function onContentPrepare($context, &$row, &$params, $page=0){
		$document =JFactory::getDocument();
		if(!version_compare(JVERSION, '1.5', 'gt') || $document->getType()!='html') return;
		$app =JFactory::getApplication();
		
		$option=version_compare(JVERSION, '2.5', 'ge')?$app->input->getCMD('option'):JRequest::getCMD('option');
		$view=version_compare(JVERSION, '2.5', 'ge')?$app->input->getCMD('view'):JRequest::getCMD('view');
		$exclude=array('com_content.category','mod_custom.content','mod_k2_content','text','com_widgetkit','mod_articles_news.content','com_smartslider2');
		if(in_array($context,$exclude) && JString::strpos($row->text,'{ultimatewecomments}')===false) return;
		if($option=='com_k2' && (get_class($row)=='TableK2Category' || !isset($row->alias) || !isset($row->id) || JString::strpos($row->text,'avPlayerWrapper')!==false)) return;
		if($option=='com_zoo' && $context!='com_zoo.element.wefbcomments') return;
		
		$session = JFactory::getSession();
		///$exists=(int)$session->get('socialcom_'.$option.$view,0);
		//if($exists==$row->id) return;
		
		$config=$this->we_comments_getconfig();
		$config["currentpage"]=$this->getComURL($row,$config);
		
		$lang = JFactory::getLanguage();
		$menu = $app->getMenu();
		$isFrontPage=($menu->getActive() == $menu->getDefault($lang->getTag()))?true:false;	
		if(!$config['allowhomepage'] && $isFrontPage) return; //stop if is HOME
		
		$output="";
		if($context!='mod_we_ufacebook_comments' && we_comments_inexclude($row,$config) && we_comments_showonly($config)){ //allow to execute
			$output=$this->we_comments_OutputData($row,$config);
			//print_r($row);
		}
		
		if($config['debug']){
			$social = new UltimateSocialComments();
			$social->debugme("Joomla 1.6+ context:".print_r($context,true));
			$social->debugme("Row-Text:".htmlentities(print_r($row->text,true)));
			$social->debugme("Row-Title:".htmlentities(print_r($row->title,true)));
			$debug=$social->debugme("Plugin Config:".print_r($config,true),true);
			if(isset($row->text)) $row->text.=$debug; else echo $debug;
		}
		
		//Merge Module Params
		if($context=='mod_we_ufacebook_comments'){
			$config=$this->we_comments_getconfig($params);
			$config["currentpage"]=$this->getComURL($row,$config);
			$output="";
		}
		//AnywhereTag
		if(empty($output)) $output=$this->we_comments_OutputData($row,$config,false);
		if(!defined('ULTIMATEWECOMMENTS')){
			define('ULTIMATEWECOMMENTS',$output);
		}
		if(JString::strpos($row->text,'{ultimatewecomments}')!==false && version_compare(JVERSION, '1.5', 'gt')){
			$row->text=str_replace('{ultimatewecomments}',$output,$row->text);
		}
		if(!empty($output)){
			$row->facebookComments=$output; //Zoo Element Compatibility
			$session->set('socialcom_'.$option.$view,$row->id);
		}
	}
	
	public function we_loadcomp_comments($compo='default'){
		$file=JPATH_SITE.DS.'plugins'.DS.'content'.DS.'we_ufacebook_comments'.DS.'components'.DS.$compo.'.php';
		$framework=JPATH_SITE.DS.'plugins'.DS.'content'.DS.'we_ufacebook_comments'.DS.'framework.php';
		if(version_compare(JVERSION, '1.5', 'gt')) {
			$file=JPATH_SITE.DS.'plugins'.DS.'content'.DS.'we_ufacebook_comments'.DS.'we_ufacebook_comments'.DS.'components'.DS.$compo.'.php';
			$framework=JPATH_SITE.DS.'plugins'.DS.'content'.DS.'we_ufacebook_comments'.DS.'we_ufacebook_comments'.DS.'framework.php';
		}
		if(!file_exists($file)) {
			$file=JPATH_SITE.DS.'plugins'.DS.'content'.DS.'we_ufacebook_comments'.DS.'components'.DS.'default.php';
			if(version_compare(JVERSION, '1.5', 'gt')) $file=JPATH_SITE.DS.'plugins'.DS.'content'.DS.'we_ufacebook_comments'.DS.'we_ufacebook_comments'.DS.'components'.DS.'default.php';
		}
		require_once($framework);
		require_once($file);
	}

	//This Function calls all methods and creates the final html output data
	public function we_comments_OutputData(&$article,$config,$apply=true){
		$document=JFactory::getDocument();
		$app =JFactory::getApplication();
		
		if(!defined('WEFBCOMMENTS_METAOG')){
			define('WEFBCOMMENTS_METAOG',1);
			if(!empty($config['admins'])) $document->setMetaData('fb:admins',$config['admins']);
			if(!empty($config['appid'])) $document->setMetaData('fb:app_id',$config['appid']);
			if($config['notify']){
				$url=JURI::root().'plugins/content/'.((version_compare(JVERSION, '1.5', 'gt'))?'we_ufacebook_comments/':'').'we_ufacebook_comments/send.php';
				$session = JFactory::getSession();
				$session->set('access',md5($_SERVER['HTTP_USER_AGENT']));
				if(version_compare(JVERSION, '3.0', 'lt')){
					if($config['loadjq']) $document->addScript('https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js');
				}else{
					JHtml::_('jquery.framework'); // load jquery
				}
				if(!defined('WEFBCOMMENTS_NOTIFY_COMMENTS')) define('WEFBCOMMENTS_NOTIFY_COMMENTS',1);
				$document->addScriptDeclaration("
					var comsesid='".$session->getId()."';
					var WEemailComment = function(response) {
						jQuery.post('".$url."', {sessid: comsesid, comid: response.commentID,comment: response.message, url: response.href} ).done(function( data ) {
							console.log(data);
						});
					}
				");
			}
		}
		$social = new UltimateSocialComments();
		if($config["useOpenGraph"]){
			$social->OpenGraphTags($article,$config);
		}
		$output="\n<!-- START Web-Expert.gr Ultimate Facebook J! Comments-->\n";
					
		if($this->isAdmin()) $output.='<div id="ufbcommentstools"><a target="_blank" href="http://developers.facebook.com/tools/comments?id='.$config['appid'].'">Developers Moderation Tools</a></div>';
		
		if($config['writecomment']){
			$output.='<div id="ufbcomments" style="font-size:22px;padding:2px;">'.JText::_('PLG_WE_UFEACEBOOK_COMMENTS_WRITECOMMENT').'</div>'; //get h3 style from template
		}
		if($config['totalcomments']){
			$output.='<div id="ufbcommentstotal" style="padding:2px;">';
			if($config['codetype']=='xfbml'){
				$output.='<fb:comments-count href="'.$config["currentpage"].'"></fb:comments-count>';
			}else{
				$output.='<span class="fb-comments-count" data-href="'.$config["currentpage"].'">0</span>';
			}
			$output.=' '.JText::_('PLG_WE_UFEACEBOOK_COMMENTS_TOTAL').'</div>';
			$document->addScriptDeclaration("
				jQuery(document).ready(function($){
					var commentCounterLoaded = setInterval(function() {
					   if($('span.fb_comments_count').length) {
						 if(!parseInt($('span.fb_comments_count').val()))
						 {
							$('#ufbcommentstotal').hide();
						 }
						 clearInterval(commentCounterLoaded);
					   }
					}, 100);
				});
			");
		}
		//$c=$this->fb_comment_count($config["currentpage"]);
		if(!$config['layoutapi']){
			$output.=$this->fb_we_comments_old($config);
		}else{
			$output.=$this->fb_we_comments_new($config);
			if($config['notify']) $output.="\n<script>window.fbAsyncInit = function() {FB.Event.subscribe('comment.create', WEemailComment);}</script>";
		}
		
		//SEO BOOST
		$showCachedComments=version_compare(JVERSION, '2.5', 'ge')?$app->input->getInt('showcomments',0):JRequest::getInt('showcomments',0);
		if($config['seoboost']>0 && (UltimateSocialComments::crawlerDetect(@$_SERVER['HTTP_USER_AGENT']) || $showCachedComments)){
			$getCommentsDataURL="https://graph.facebook.com/comments/?ids=".$config["currentpage"];
			$md5name=JPATH_SITE.'/cache/plg_ufb_'.md5("fb".$getCommentsDataURL).".txt";
			if(JFile::exists($md5name) && ((time() -  filemtime($md5name)) <= $config['seoboostcache'])) $getCommentsDataURL=$md5name;
			$fbCom=@file_get_contents($getCommentsDataURL);
			$seoData='<!-- SEO BOOST FACEBOOK COMMENTS -->'."\n".'<div id="ufbcomments_loaded"';
			//if(!UltimateSocialComments::crawlerDetect(@$_SERVER['HTTP_USER_AGENT'])) $seoData.=' style="z-index:-100;position:fixed;display:none;"'; //hide only on normal browsers
			$seoData.='>'; 
			if(!empty($fbCom)){
				if($config['seoboost']==1) @file_put_contents($md5name,$fbCom);
				$fbCom=@json_decode($fbCom,true);
				if(isset($fbCom[$config["currentpage"]]["comments"]["data"]) && count($fbCom[$config["currentpage"]]["comments"]["data"])>0){
					$comments=$fbCom[$config["currentpage"]]["comments"]["data"];
					$seoData.=count($comments)." Comments from Facebook.com\n";
					foreach($comments as $idx=>$fb){
						$seoData.='<div class="fbcomments_seocache msg'.$fb["id"].'">'.($idx+1).'# From User:<a target="_blank" href="https://www.facebook.com/profile.php?id='.$fb["from"]["id"].'">'.$fb["from"]["name"].'</a> Time:'.date('d-m-Y H:i:s',strtotime($fb["created_time"])).'<br/>Message:<b>'.$fb["message"].'</b></div>'."\n\n";
					}
				}
			}else{
			  if(JFile::exists($md5name)) JFile::delete($md5name);
			}
			$seoData.='</div>';
			$output.=$seoData;
		}
		if(!JPluginHelper::isEnabled('system','wefacebookjsdk')) $output.='<div style="color:red;font-weight:bold;">Plugin - JSDK/Ultimate Social Elements is disabled! Please enable it!</div>';
		$output.="\n<!-- END Web-Expert.gr Ultimate Facebook J! Comments -->\n";
		$result=false;
		
		if($apply) $result=we_comments_output($article,$config,$output);
		if($config['debug']){
			if($result!==false) $social->debugme($article);
			$social->debugme("Buttons:".htmlentities($output));
			$debug=$social->debugme("Output Result:".((isset($result) && $result===false)?'FALSE':'OK'),true);
			if(isset($row->text)) $row->text.=$debug; else echo $debug;	
		}
		
		# CSS file	
		if(!defined('WEFBCOMMENTS_CSS') && $result!==false){
			define('WEFBCOMMENTS_CSS',1);
			$style='<style type="text/css">'.$config['cssfbstyle'].'</style>';
			$document->addCustomTag($style);
		}
		return $output;
	}
	
	public function fb_we_comments_old($config){
		$comments='<div id="wefbbox" class="we_fb_comments"><fb:comments numposts="'.$config['numcomm'].'" width="'.$config['width'].'" ';
		#Load Comments from specif URL
		if(!empty($config['customlink'])){
			$comments.='xid="'.urlencode($config['customlink']).'" ';
			$comments.='url="'.$config['customlink'].'" ';
		}else{
			$comments.='xid="'.urlencode($config["currentpage"]).'" ';
			if(!$config['upgrade2new']){
				$comments.='url="'.$config["currentpage"].'" ';
			}
		}
		if($config['order']){
			$comments.='reverse="1" ';
		}	
		if($config['postchecked']==0){
			$comments.='publish_feed="false" ';
		}	
		if($config['simpleview']){
			$comments.='simple="1" ';
		}
		if($config['enablecustomstyle']){
			if(strpos($config['customstyle'],'http')===false) $config['customstyle']=JURI::root().$config['customstyle'];
			$comments.='css="'.$config['customstyle'].'?cache='.date('Ymdhi').'" ';
		}
		if($config['upgrade2new']){
			$comments.='migrated="1" ';
		}
		$comments.='></fb:comments></div>';
		return $comments;
	}
	
	public function fb_we_comments_new($config){
		$document =JFactory::getDocument();
		$comments='<div id="wefbbox" class="we_fb_comments">';
		if($config['codetype']=='xfbml'){
			$comments.='<fb:comments href="'.$config["currentpage"].'" title="'.$document->getTitle().'" ';
			if($config['scheme_n']=='dark')	$comments.='colorscheme="dark" ';
			$comments.='order_by="'.$config["orderby"].'" num_posts="'.$config['numcomm'].'" width="'.$config['width'].'"></fb:comments>';
		}else{
			$comments.='<div class="fb-comments" data-href="'.$config["currentpage"].'" data-width="'.$config['width'].'" data-numposts="'.$config['numcomm'].'" ';
			if($config['scheme_n']=='dark')	$comments.='data-colorscheme="dark" ';	
			$comments.='data-order-by="'.$config["orderby"].'"></div>';
		}
		$comments.='</div>';
		
		return $comments;
	}
	
 	public function fb_comment_count($url)
	{
	  $json = json_decode(file_get_contents('https://graph.facebook.com/?ids=' . $url));
	  return ($json->$url->comments) ? $json->$url->comments : 0;
	}
	
	public function we_comments_getconfig($mergeParams=null){
		$plugin = JPluginHelper::getPlugin('content', 'we_ufacebook_comments');
		$plgparams=class_exists('JParameter') ? new JParameter($plugin->params) : new JRegistry($plugin->params);
		if(!is_null($mergeParams)) $plgparams->merge($mergeParams);
		
		$config=array();
		$config['codetype']=$plgparams->get('codetype','xfbml');
		$config['useOpenGraph']=(int)$plgparams->get('useOpenGraph',1);
		$config['getdomain']=(int)$plgparams->get('getdomain',0);
		$config['items']=trim($plgparams->get('items',''));
		$config['sections']=trim($plgparams->get('sections',''));
		$config['categories']=trim($plgparams->get('categories',''));
		$config['inextype']=$plgparams->get('inextype','exclude');
			
		$config['layoutapi']=(int)$plgparams->get('layoutapi',1);
		$config['numcomm']=(int)$plgparams->get('numcomm',30);
		$config['width']=$plgparams->get('width','100%');
		$config['display']=(array)$plgparams->get('displayon','k2items');
		$config['writecomment']=(int)$plgparams->get('writecomment',0);
		$config['totalcomments']=(int)$plgparams->get('totalcomments',0);

		$config['debug']=(int)$plgparams->get('debug',0);
		#Old
		$config['order']=(int)$plgparams->get('order',0);
		$config['postchecked']=(int)$plgparams->get('postchecked',0);
		$config['simpleview']=(int)$plgparams->get('simpleview',0);
		$config['customlink']=trim($plgparams->get('customlink',''));
		$config['cssfbstyle']=$plgparams->get('cssfbstyle','');
		$config['customstyle']=$plgparams->get('customstyle','');
		$config['enablecustomstyle']=(int)$plgparams->get('enablecustomstyle',0);
			
		#New
		$config['notify']=(int)$plgparams->get('notify',0);
		$config['loadjq']=(int)$plgparams->get('loadjq',0);
		$config['admins']=$plgparams->get('admins','');
		$config['appid']=$plgparams->get('appid','');
		$config['scheme_n']=$plgparams->get('scheme','light');
		$config['jsconnect']=(int)$plgparams->get('jsconnect',1);
		$config['upgrade2new']=(int)$plgparams->get('upgrade2new',1);
		$config["orderby"]=$plgparams->get('orderby','social');	
		$config['seoboost']=(int)$plgparams->get('seoboost',1);
		$config['seoboostcache']=(int)$plgparams->get('seoboostcache',3600);
		$config['removewww']=(int)$plgparams->get('removewww',0);
		$config['debugip']=$plgparams->get('debugip','');
		$config['allowhomepage']=(int)$plgparams->get('allowhomepage',0);
		
		
		#_GET Vars temporary store
		$config['get_option']= JRequest::getCmd('option');
		$config['get_Itemid']= JRequest::getInt('Itemid');
		$config['get_view']	= JRequest::getCmd('view');
		$config['get_task']	= JRequest::getCmd('task');
		$config['get_layout']= JRequest::getCmd('layout');
		$config['get_id']	= JRequest::getVar('id');
		#EventList && Quick Faq
		$config['get_item_id']= JRequest::getInt('item_id');
		$config['get_cid']	= JRequest::getInt('cid');	
		if ($config['get_option'] == 'com_virtuemart') {
			$config['vm']['page']= JRequest::getVar('page');
			$config['vm']['flypage'] = JRequest::getVar('flypage');
			$config['vm']['product_id'] = JRequest::getVar('product_id');
			$config['vm']['category_id'] = JRequest::getVar('category_id');
		}
		//unset($plugin,$plgparams);
		$config['debug']=($config['debug'] && (empty($config['debugip']) || $config['debugip']==$_SERVER['REMOTE_ADDR']));
		return $config;
	}
	
	public function getComURL($article='',$config=array() ){
		$currentPage=UltimateSocialComments::getCurrentPage();
		#vm this check is for SEF or Non-Sef Mode 
		if(JRequest::getInt('vmcchk')!=1 && JRequest::getVar('option')=="com_virtuemart" && JRequest::getInt('virtuemart_product_id',0)==0){
			$sep="&vmcchk=1";
			$html=substr($currentPage,-count(".html")); #sef HTML
			$pos=JString::strpos($currentPage,"?"); #Non sef
			if($html==".html" || $pos===false){
				$sep="?vmcchk=1";
			}
			$currentPage.=$sep;
		}
		/*
		#JoomFish clear
		$lang=JRequest::getCmd('lang');
		if(!empty($lang)){
			if(strpos($currentPage,'lang=')>0){
				$replace=array('$lang='.$lang,'?lang='.$lang);
				$currentPage=str_replace($replace,'',$currentPage);
			}else if(strpos($currentPage,$lang.'/')>0){
				$cutfrom=strlen(JURI::base())+strlen($lang)+1;
				$cleanurl=substr($currentPage,$cutfrom);
				$currentPage=JURI::base().$cleanurl;
			}
		}*/
		$currentPage=preg_replace('/(\?|&)limitstart=([\d]+)/',"",$currentPage);
		if($config["removewww"]) $currentPage=str_replace('www.','',$currentPage);
		return $currentPage;
	}

	public function JVersion(){
		if(!defined('WEJM16')){
			$v=(version_compare(JVERSION, '1.5', 'gt'))?true:false;
			define('WEJM16',$v);
		}
	}
	
	public function isAdmin(){
		$user =JFactory::getUser();
		$isAdmin=false;
		//Joomla 1.5
		if (version_compare(JVERSION, '1.5', 'eq') && ($user->usertype == "Super Administrator" || $user->usertype == "Administrator")) $isAdmin=true;
		//Joomla 2.5/3.x
		elseif(version_compare(JVERSION, '1.6', 'ge') && $user->get('isRoot')) $isAdmin=true;
		return $isAdmin;
	}
	
	public function ZooItemOBJ($row){
		$text=$row->text;
		$db =JFactory::getDBO();
		$db->setQuery("SELECT * FROM `#__zoo_item` WHERE id=".JRequest::getInt('item_id',0));
		$row = $db->loadObject();
		$row->elements=json_decode($row->elements,true);
		$row->text=$text;
		return $row;
	}
} //end of class