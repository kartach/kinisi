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
function we_comments_output(&$article,$config,$output)
{
	$article->text.=$output;
}

function we_comments_showonly($config){
$display=$config['display'];
$flag=false;//don't execute
if (empty($display)) {return false; } #Empty dont exceute
#============= IS SELECTED? ================
$selected=false;		
		if (is_array( $display )) {
			foreach ( $display as $key => $value ) {				
				if($value=='article') $selected=true;
			}
		} else {
			if($display=='article') $selected=true;
		}
#==========================================		
		if($selected && $config['get_view']=='article'){ $flag=true; }

		return $flag;
}

#This Functions Includes / Excludes execution
function we_comments_inexclude($article,$config){
	#If empty, means will allow to run anywhere
	if(    empty($config['sections']) 
		&& empty($config['items']) 
		&& empty($config['categories'])) return true;
		
	#Set the flag value
	if($config['inextype']=='exclude'){
		$flgbool=false;
	}else{ #include
		$flgbool=true;
	}
	#Set zero
	$multi_cats=0;
	$multi_secs=0;
	$multi_items=0;
	
	#Start Checks
			if ($config['sections'] && !WEJM16)
			{
				$sec_ids = explode(",",$config['sections']);
				if ((count($sec_ids)>=1) && isset($article->sectionid))  $multi_secs=1;
			}
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
			if ($multi_secs){
				foreach ($sec_ids as $sec_id){
					if($article->sectionid==$sec_id)
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