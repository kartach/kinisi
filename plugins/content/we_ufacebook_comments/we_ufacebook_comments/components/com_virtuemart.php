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
if(!defined('WEFBLIKE_VM2')) commentsVirtuemart2();

function we_comments_output(&$article,$config,$output){
		$article->text=$article->text.$output;
}

function we_comments_showonly($config){
		$display=false;
		if(JRequest::getVar('page')=='shop.product_details' && in_array('vmp',$config['display'])) $display=true;
		if(JRequest::getVar('view')=='productdetails' && in_array('vmp',$config['display'])) $display=true; //vm2
		return $display;
}

#This Functions Includes / Excludes execution
function we_comments_inexclude(&$article,$config){
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
				if (count($cat_ids)>=1) $multi_cats=1;
			}
			if ($config['items'])
			{
				$item_ids = explode(",",$config['items']);
				if (count($item_ids)>=1) $multi_items=1;
			}
			//Run excludes/includes checks....
			if ($multi_cats){
				foreach ($cat_ids as $cat_id){
				
					if($config['vm']['category_id']==$cat_id) return $flgbool;
				}
			}
			if ($multi_items){
				foreach ($item_ids as $item_id){
					if($config['vm']['product_id']==$item_id)
					return $flgbool;
				}
			}
	//Nothing matches...
	return !($flgbool);
}
	function commentsVirtuemart2(){
		$isVersion2=false;
		if(JRequest::getInt('virtuemart_product_id',0)>0){
			JRequest::setVar('product_id',JRequest::getInt('virtuemart_product_id'));
			$isVersion2=true;
		}
		if(JRequest::getInt('virtuemart_category_id',0)>0){
			JRequest::setVar('category_id',JRequest::getInt('virtuemart_category_id'));
			$isVersion2=true;
		}
		if(!defined('WEFBLIKE_VM2')) define('WEFBLIKE_VM2',$isVersion2);
	}
?>