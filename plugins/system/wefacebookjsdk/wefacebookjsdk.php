<?php
/**
 * @package     Facebook JSDK Kit for Web-expert.gr Social plugins
 * @version     1.3.27
 * @author      Stergios Zgouletas <info@web-expert.gr>
 * @link        http://www.web-expert.gr
 * @copyright   Copyright (C) 2010 Web-Expert.gr All Rights Reserved
 * @license     http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */
// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
jimport( 'joomla.plugin.plugin');
//error_reporting(E_ALL);
//ini_set("display_errors",1);
class plgSystemWefacebookjsdk extends JPlugin
{
	var $plgparams=null;
	var $isRobot=false;
	
	public function __construct(&$subject, $config)
	{
		parent::__construct($subject, $config);
	}
	
	function getParams(){
		if(class_exists('JParameter') && $this->plgparams===NULL){
			$plugin = JPluginHelper::getPlugin('system', 'wefacebookjsdk');
			$this->plgparams=new JParameter($plugin->params);
		}else{
			$this->plgparams=$this->params;
		}
	}
	
	
	function onAfterRoute()
	{
		$app = JFactory::getApplication();
		if($app->isAdmin()) return;
		$pattern = strtolower('/facebookexternalhit|Facebot|LinkedInBot|Pinterest|bot|crawl|slurp|spider|google/x');
		
		if(isset($_SERVER['HTTP_USER_AGENT']) && preg_match($pattern, strtolower($_SERVER['HTTP_USER_AGENT'])))
		{
			$params = $app->getParams();
			$params->set('gzip', 0);
			$this->isRobot=true;
		}
	}
	
	function onAfterRender()
	{
		$app =JFactory::getApplication();
		$doc =JFactory::getDocument();
		if($app->isAdmin() || $doc->getType()!='html') return;
		$this->getParams();
		
		$fb_id =JString::trim($this->plgparams->get('apiid', ''));
		if(empty($fb_id)){
			$fb_id = $doc->getMetaData("fb:app_id");
			$this->plgparams->set('apiid',$fb_id);
		}
		
		$asyncjsdk = (int)$this->plgparams->get('asyncjsdk', 1); //facebook Async
		$lang = trim($this->plgparams->get('lang', 'en_US')); //Facebook Language
		$autodetect = (int)$this->plgparams->get('autodetect', 1); //Autodtect Langugae
		$jsloading = (int)$this->plgparams->get('jsloading', 1);
		
		$langobj =JFactory::getLanguage();		
		if($autodetect) $lang=$langobj->getTag();
		list($gglang)=explode('-',$lang);
		
		$buffer = JResponse::getBody();
		//Social Buttons
		if(JString::strpos($buffer,'{ultimatesocialbuttons')!==false){
			$regex = '/{ultimatesocialbuttons(.*)}/iU';
			$tag="<!-- Web-expert.gr - Ultimate Social Buttons Replaced -->";
			$rep="";
			if(defined('ULTIMATESOCIALBUTTONS')){
				@preg_match_all( $regex, $buffer, $matches );
				$rep=(@trim($matches[1][0])=='vertical')?ULTIMATESOCIALBUTTONSV:ULTIMATESOCIALBUTTONS;
			}
			$buffer =@preg_replace( $regex,$tag.$rep, $buffer);
		}
		
		//FB Comment Box
		if(JString::strpos($buffer,'{ultimatewecomments')!==false){
			$tag="\n<!-- Web-expert.gr - Ultimate We Comments Replaced -->";
			$rep=defined('ULTIMATEWECOMMENTS')?ULTIMATEWECOMMENTS:'';
			$buffer=str_replace('{ultimatewecomments}',$tag.$rep,$buffer);
		}
		
		if(!$this->isRobot){
			$fbload=($jsloading>0)?true:false;
			$ggload=($jsloading>0)?true:false;
			
			#Check if JSDK is already loaded to current page
			if($jsloading==1){
				$fbload=JString::strpos($buffer, '<div class="fb-page')!==false || (JString::strpos($buffer, "fb-root")===false && (JString::strpos($buffer, "fb:")!==false || JString::strpos($buffer, 'class="fb-like"')!==false))?true:false;
				$ggload=(JString::strpos($buffer,'apis.google.com/js/platform.js')===false && JString::strpos($buffer, 'class="g-plusone"')!==false)?true:false;
			}
			
			$add_script="\n<!-- Start Facebook/GG+ JSDK Kit (by web-expert.gr)-->\n";
			if($ggload){
				$add_script.='<script src="https://apis.google.com/js/platform.js" async defer>{lang: "'.$gglang.'"}</script>';
			}
			
			if($fbload){
				$add_script.="\n<div id=\"fb-root\"></div>
					<script>(function(d, s, id) {
					  var js, fjs = d.getElementsByTagName(s)[0];
					  if (d.getElementById(id)) return;
					  js = d.createElement(s); js.id = id;";
					  if($asyncjsdk) $add_script.="js.async = true;";
					  $add_script.="js.src = \"//connect.facebook.net/".str_replace('-','_',$lang)."/sdk.js#xfbml=1&version=v2.10&appId=".$fb_id."\";
					  fjs.parentNode.insertBefore(js, fjs);
					}(document, 'script', 'facebook-jssdk'));
					</script>";
			}
			
			//Language Fix
			if($jsloading>0 && !$fbload && (JString::strpos($buffer,"all.js")!==false || JString::strpos($buffer,"sdk.js")!==false)){
				preg_match_all('/connect.facebook.net\/(.*)\/(.*).js/iU',$buffer,$matches);
				if(isset($matches[1]) && count($matches[1])){
					foreach($matches[1] as $idx=>$langFound) $buffer=str_replace($langFound.'/'.$matches[2][$idx].'.js',$lang.'/'.$matches[2][$idx].'.js',$buffer);
				}
			}
			
			#pinterest
			if($jsloading!=0 && JString::strpos($buffer,'pinterest.com/pin')!==false){
				$add_script.='<script async defer src="//assets.pinterest.com/js/pinit.js"></script>';
			}
			if($jsloading!=0 &&  JString::strpos($buffer,'twitter.com/share')!==false && JString::strpos($buffer,'window.twttr')===false){
				$add_script.='<script>window.twttr=(function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],t=window.twttr||{};if(d.getElementById(id))return;js=d.createElement(s);js.id=id;js.src="https://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);t._e=[];t.ready=function(f){t._e.push(f);};return t;}(document,"script","twitter-wjs"));</script>';
			}
			if($jsloading!=0 && JString::strpos($buffer,'IN/Share')!==false){
				$add_script.='<script defer src="//platform.linkedin.com/in.js" type="text/javascript">lang: '.$lang.'</script>';
			}
			/*if($jsloading!=0 && JString::strpos($buffer,'tap_button.js')!==false){
				$add_script.='<script type="text/javascript" src="//static.tapcdn.com/mosaic/tap_button.js"></script>';
			}*/
			
			$add_script.="\n<!-- End Facebook/GG+ JSDK Kit (by web-expert.gr)-->\n";
			#After <body>
			if($this->plgparams->get('loadtype', 1)==1){
				@preg_match('/<body(.*)>/Ui', $buffer, $matches);
				$buffer=str_replace($matches[0],$matches[0].$add_script,$buffer);
			}else{
				#Before </body>
				$buffer = str_replace("</body>",$add_script."</body>",$buffer);
			}
		}
		
		//Fix
		$searches = array(
			'<meta name="og:url"',
			'<meta name="og:title"',
			'<meta name="og:site_name"',
			'<meta name="og:type"',
			'<meta name="og:image"',
			'<meta name="og:description"',
			'<meta name="fb:admins"',
			'<meta name="fb:app_id"',
			'<meta property="fb:app_id" content="" />',
		);
		
		$replacements = array(
			'<meta property="og:url"',
			'<meta property="og:title"',
			'<meta property="og:site_name"',
			'<meta property="og:type"',
			'<meta property="og:image"',
			'<meta property="og:description"',
			'<meta property="fb:admins"',
			'<meta property="fb:app_id"',
			'',
		);
		
		$buffer = str_replace($searches,$replacements,$buffer);
		JResponse::setBody($buffer);
	}
}