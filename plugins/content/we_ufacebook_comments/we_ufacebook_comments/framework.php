<?php
/**
 * @package     Ultimate Facebook J!Comments
 * @version     1.3.27
 * @author      Stergios Zgouletas <info@web-expert.gr>
 * @link        http://www.web-expert.gr
 * @copyright   Copyright (C) 2010 Web-Expert.gr All Rights Reserved
 * @license     http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */
defined( '_JEXEC' ) or die( 'Restricted access' );
class UltimateSocialComments{
	public $debug="";
	
	//Extract the Social Buttons and clear the Text
	public static function extractButtons($inputText=''){
		if(empty($inputText)) return array(null,$inputText);
		$socialButtons=null;
		if(JString::strpos($inputText,'START Web-Expert.gr Ultimate Facebook')!==false){	
			$pattern='<!-- START Web-Expert.gr Ultimate Facebook J! Comments-->(.*)<!-- END Web-Expert.gr Ultimate Facebook J! Comments -->';
			@preg_match_all("/".$pattern."/s", $inputText, $matches);
			if(count($matches)>0){
				$socialButtons=str_replace('class="we_fb_comments"','class="we_fb_comments we_fb_comments_moved"',$matches[0][0]);
				foreach($matches as $match) $inputText=str_replace($match[0],'',$inputText);
			}
		}
		return array($socialButtons,$inputText);
	}
	
	public static function crawlerDetect($USER_AGENT)
	{
		$crawlers = array(
			'Google' => 'Google',
			'MSN' => 'msnbot',
			'Rambler' => 'Rambler',
			'Yahoo' => 'Yahoo',
			'AbachoBOT' => 'AbachoBOT',
			'accoona' => 'Accoona',
			'AcoiRobot' => 'AcoiRobot',
			'ASPSeek' => 'ASPSeek',
			'CrocCrawler' => 'CrocCrawler',
			'Dumbot' => 'Dumbot',
			'FAST-WebCrawler' => 'FAST-WebCrawler',
			'GeonaBot' => 'GeonaBot',
			'Gigabot' => 'Gigabot',
			'Lycos spider' => 'Lycos',
			'MSRBOT' => 'MSRBOT',
			'Altavista robot' => 'Scooter',
			'AltaVista robot' => 'Altavista',
			'ID-Search Bot' => 'IDBot',
			'eStyle Bot' => 'eStyle',
			'Scrubby robot' => 'Scrubby',
			'Facebook' => 'facebookexternalhit',
			'Facebook2' => 'Facebot',
		  );

		$crawlers_agents = implode('|',$crawlers);
		return (JString::strpos($crawlers_agents, $USER_AGENT) === false)?false:true;
	}
	
	#encode link
	function encodelink($link){
		$find=array(':','/','?','&','=');
		$replace=array('%253A','%252F','%253F','%2526','%253D');
		return urlencode($link);
		//return str_replace($find,$replace,$link );
	}
	
	function startsWith($haystack, $needle)
	{
		return !strncmp($haystack, $needle, strlen($needle));
	}
	function endsWith($haystack, $needle)
	{
		$length = strlen($needle);
		if ($length == 0) {
			return true;
		}

		return (substr($haystack, -$length) === $needle);
	}
	public static function getCurrentPage(){
		$u =JURI::getInstance();
		$link=$u->toString( array('scheme', 'host', 'path','query') );
		$link=preg_replace('/(\?|&)fb_comment_id=(.*)/',"",$link);
		$link=preg_replace('/(\?|&)fb_action_ids=(.*)/',"",$link);
		$link=preg_replace('/(\?|&)fb_action_types=(.*)/',"",$link);
		$link=preg_replace('/(\?|&)category_id=0/',"",$link);
		$links=@explode("#",$link,2);
		return $links[0];
	}
	
	public static function getBase($mode='full'){
		$u=JURI::getInstance(JURI::root());
		$domain=$u->toString( array( 'scheme','host') );
		$path=$u->toString( array( 'path') );
		
		$uri=$domain.$path; //full
		if($mode=='domain') $uri=$domain;
		if($mode=='path') $uri=$path;	
		if(substr($uri,-1)== '/') $uri=JString::substr($uri,0,-1);
		return $uri;
	}
	
	function debugme($datacoming,$print=0){
		if(is_array($datacoming) || is_object($datacoming)) $datacoming=print_r($datacoming,true);
		$this->debug.='<div><pre>'.htmlentities($datacoming).'</pre></div>';
		if($print){
			$debug=$this->debug;
			$this->debug=null;
			return '<h2>Debug</h2><div id="we_fb_debug" style="clear:both;border: 1px dotted red;">'.$debug.'</div>';
		}
	}
	
	public static function cleartext($txt,$limit=0){
		$txt = htmlspecialchars_decode(strip_tags(html_entity_decode($txt,ENT_COMPAT,'UTF-8')));
		$txt = str_replace(array("\r\n","\n\r", "\r", "\n", "\t"), "", $txt);
		$txt=preg_replace( '/{(.*)}(.*){\/(.*)}/iU', '',$txt);
		/* REMOVE JAVASCRIPT */
		$txt=preg_replace( '/<script (.*)<\/script>/iU', '',$txt);
		if($limit>0){
			$txt=JString::substr($txt,0,$limit);
		}
		return trim($txt);
	}
	
	public static function getImage($string){
		if(empty($string)) return false;
		// find images
		$img_src=false;
		#Content Thumps 
		if (preg_match_all("#<img.+?>#s", $string, $matches) > 0){
			for($i=0;$i<count($matches[0]);$i++){
				if(preg_match("#src=\".+?\"#s",$matches[0][$i],$match)){
					$img_src = str_replace('src="','',$match[0]);
					$img_src = JString::trim(urldecode(str_replace('"','',$img_src)));
					list($imgW, $imgH, $imgType, $imgAttr) = @getimagesize($img_src);
					if(((int)$imgW>1 && (int)$imgW>80) || is_null($imgW)) break;
				}
				$img_src=false;#reset
			}
		}
		
		#Video Thumps First
		if($img_src==false){
			preg_match('#(\.be/|/embed/|/v/|/watch\?v=)([A-Za-z0-9_-]{5,11})#', $string, $matches);
			if(isset($matches[2]) && $matches[2] != ''){
				$img_src ="http://i3.ytimg.com/vi/".$matches[2]."/default.jpg";
			}
		}
		
		if($img_src==false){
			preg_match('#(vimeo.com/video/|vimeo.com/)([0-9]{4,})#', $string, $matches);
			if(isset($matches[2]) && $matches[2] != ''){
				$hash = unserialize(@file_get_contents("http://vimeo.com/api/v2/video/".$matches[2].".php"));
				$img_src=$hash[0]['thumbnail_small'];  
			}
		}
		return $img_src;
	}

	function OpenGraphTags($row,$config){
		if(!isset($row->id) || !isset($row->title)) return;
		
		$document=JFactory::getDocument();
		$docType = $document->getType();
		if ($docType != 'html' ) return;
		$siteconfig=JFactory::getConfig();
		$ItemText=$row->text;		
		if(JRequest::getCMD('option')=='com_k2' && empty($row->text) && isset($row->introtext)  && isset($row->fulltext)) $ItemText=$row->introtext.' '.$row->fulltext;

		$values=array();
		$values['sitename'] =(version_compare(JVERSION,'1.6.0') < 0)?$siteconfig->getValue('sitename'):$siteconfig->get('sitename');
		$values['image']=$this->getImage($ItemText);
		$values['desc']=self::cleartext($ItemText,200);

		if(JRequest::getCMD('option')=='com_k2'){
			$values['desc']=(isset($row->metadesc) && !empty($row->metadesc))?self::cleartext($row->metadesc,220):self::cleartext($ItemText,200);
			$largelK2=isset($row->imageLarge)?$row->imageLarge:'';
			$mediumK2=isset($row->imageMedium)?$row->imageMedium:'';
			$k2image=(!empty($mediumK2))?$mediumK2:$largelK2;
			$values['image']=(empty($k2image))?$values['image']:$k2image;
		}elseif(JRequest::getCMD('option')=='com_content'){
			$metadata=(isset($row->metakey) && !empty($row->metakey))?$row->metakey:'';
			$metadata=(isset($row->metadesc) && !empty($row->metadesc))?$row->metadesc:$metadata;
			$values['desc']=($metadata)?self::cleartext($metadata,0):$values['desc'];
		}elseif(JRequest::getCMD('option')=='com_virtuemart'){
			$db =JFactory::getDBO();
			$image=false;
			$values['desc']=(isset($row->product_s_desc) && !empty($row->product_s_desc))?self::cleartext($row->product_s_desc,220):self::cleartext($row->product_desc,220);
			if(!WEFBLIKE_VM2){ //vm1
				$db->setQuery('SELECT product_name,product_s_desc,product_desc,product_thumb_image,product_full_image FROM #__vm_product WHERE product_id='.JRequest::getInt('product_id',0).';');		   
				$vmrs = $db->loadObject();			
				$values['title']=$vmrs->product_name;
				if($vmrs->product_thumb_image) $image='components/com_virtuemart/shop_image/product/'.$vmrs->product_thumb_image;
				if(empty($values['desc'])) $values['desc']=(!empty($vmrs->product_s_desc))?self::cleartext($vmrs->product_s_desc,220):self::cleartext($vmrs->product_desc,220);
			}else{ //vm2
				$values['title']=$row->product_name;
				if(!empty($article->virtuemart_media_id[0])){
					$db->setQuery('SELECT file_url_thumb as image FROM #__virtuemart_medias WHERE virtuemart_media_id='.$row->virtuemart_media_id[0].';');		   
					$vmrs = $db->loadObject();
					if(isset($vmrs->image)) $image=$vmrs->image;
				}
			}
			$values["image"]=($image!==false)?$image:self::getImage($row->product_desc);
			$values['type']='product'; //product
		}
		
		$values['CurLink']=$config['currentpage']; //allow overide
		$values['author']=$document->getMetaData('author'); //allow overide
		$values['title']=$row->title;
		
		if (empty($values['title'])) $values['title']=$document->getTitle();
		if (empty($values['desc'])) $values['desc']=$document->getMetaData("description");
		#Debug
		if($config['debug']){
			$this->debugme($values);
		}
		
		if(!empty($config['appid'])) $document->setMetaData('fb:app_id',$config['appid']);
		if(!defined('WEFBLIKE_OGTAGS'))	define('WEFBLIKE_OGTAGS',1); else return;
		#Add Tags
		if(!empty($config['admins'])){
			$adminIDs=@explode(',',$config['admins']);
			foreach($adminIDs as $id) $document->setMetaData('fb:admins',trim($id));
		}
		
		$document->setMetaData('og:title',addslashes(strip_tags($values['title'])));
		$document->setMetaData('og:description',addslashes(strip_tags($values['desc'])));
		$document->setMetaData('og:site_name',addslashes( strip_tags($values['sitename'])));
		$document->setMetaData('og:url',$values['CurLink']);
					
		if(!empty($values['image']) && $values['image']!==false) {
			$remote=JString::strpos($values['image'],'http://');
			if ($remote===false){
				if(substr($values['image'],0,1) != '/') $values['image']="/".$values['image'];
				$image_query=explode("/",$values['image']);
				$dom=self::getBase('full');
				if(JString::strpos($dom,$image_query[1])!==false) $dom=self::getBase('domain');
				$values['image'] = $dom.$values['image'];
			}
			$document->setMetaData('og:image',$values['image']);
		}		
		return true;
	}
} //end of class