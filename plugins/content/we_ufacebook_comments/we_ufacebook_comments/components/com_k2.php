<?php
/**
 * @package     Ultimate Facebook Comments
 * @version     1.3.20
 * @author      Stergios Zgouletas <info@web-expert.gr>
 * @link        http://www.web-expert.gr
 * @copyright   Copyright (C) 2010 Web-Expert.gr All Rights Reserved
 * @license     http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */
defined( '_JEXEC' ) or die( 'Restricted access' );

function we_comments_output(&$article,$config,$output){
	if(empty($article->text) || empty($article->title) || empty($article->alias)) return false;
	elseif(!empty($article->video) && $article->text===$article->video) return false;
	elseif(!empty($article->gallery) && $article->text===$article->gallery) return false;
	
	$article->text.=$output."\n <!-- WE K2text -->";
	if(!empty($article->fulltext) && $article->params->get('itemFullText',0))
		$article->fulltext.=$output."\n <!-- WE K2fulltext -->";
	else
		$article->introtext.=$output."\n <!-- WE K2introtext -->";
}

function we_comments_showonly($config){
	$display=false;
	$view=JRequest::getCmd('view');
	if($view=='item' && in_array('k2items',$config['display'])) $display=true;
	return $display;
}
#This Functions Includes / Excludes execution
function we_comments_inexclude($article,$config){
	#If empty, means will allow to run anywhere
	if(    empty($config['items']) 
		&& empty($config['categories'])) return true;
		
	#Set the flag value
	if($config['inextype']=='exclude'){
		$flgbool=false;
	}else{ #include
		$flgbool=true;
	}
	#Set zero
	$multi_cats=0;
	$multi_items=0;
	
	#Start Checks
			if ($config['categories'])
			{
				$cat_ids = explode(",",$config['categories']);
				if (count($cat_ids)>=1 && isset($article->catid) ) $multi_cats=1;
			}
			if ($config['items'])
			{
				$item_ids = explode(",",$config['items']);
				if (count($item_ids)>=1 && isset($article->id)) $multi_items=1;
			}
			
			//Run excludes/includes checks....
			if ($multi_cats){
				foreach ($cat_ids as $cat_id){
					if($article->catid==$cat_id)
					return $flgbool;
				}
			}

			if ($multi_items){
				foreach ($item_ids as $item_id){
					if($article->id==$item_id)
					return $flgbool;
				}
			}

	//Nothing matches...
	return !($flgbool);
}
?>