<?php
/**
 * @package Sj Facebook
 * @version 2.5
 * @license http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 * @copyright (c) 2012 YouTech Company. All Rights Reserved.
 * @author YouTech Company http://www.smartaddons.com
 *
 */
defined('_JEXEC') or die;

class modSjFacebookHelper{
	public static function getFanbox($params){
		//get params from admin config
		$pageid 		= trim($params->get('pageid'));
		$facebookheight = trim((int)$params->get('facebookheight'));
		if($facebookheight == 0){
			$height = '500';
		}else{
			$heightmax = trim($params->get('facebookheight'));
			if($heightmax > 600){
				$height = '600';
			}elseif($heightmax >=300 & $heightmax <= 600){
				$height = trim($params->get('facebookheight'));
			}elseif($heightmax < 300){
				$height = '600';
			}
		}
		$facebookwidth  = trim((int)$params->get('facebookwidth'));
		if($facebookwidth == 0){
			$width = '500';
		}else{
			$widthmax = trim($params->get('facebookwidth'));
			if($widthmax > 500){
				$width = '500';
			}elseif($widthmax >=180 & $widthmax <= 500){
				$width = trim($params->get('facebookwidth'));
			}elseif($widthmax < 180){
				$width = '500';
			}
		}
		$hide_cover 	= trim($params->get('hide_cover'));
		$show_facepile  = trim($params->get('show_facepile'));
		$stream 		= trim($params->get('stream'));
		$small_header 	= trim($params->get('small_header'));
		$bordercolor 	= trim($params->get('bordercolor'));

		// get data from facebook
		$fbcontent = "";
		if($pageid == '' ){
			$fbcontent.='Please enter your valid Page ID.';
		}else{
			$href_id = (strpos($pageid,'http') !== false )?'?href=':'?id=';
			$fbcontent .= '<iframe src="http://www.facebook.com/plugins/likebox.php'.$href_id.$pageid;
				if ( $stream ){
					$fbcontent .= '&amp;stream=true';
				}
				if ( $hide_cover ){
					$fbcontent .= '&amp;hide_cover=true';
				}
				if ( $small_header ){
					$fbcontent .= '&amp;small_header=true';
				}
				if ( $show_facepile == 0 ){
					$fbcontent .= '&amp;show_facepile=false';
				}
				if ( $height ){
					$fbcontent .= '&amp;height='.$height.'';
				}
				if ( $width ){
					$fbcontent .= '&amp;width='.$width.'"';
				}
				$fbcontent .= ' style="overflow:auto;background-color: transparent;border:1px solid '.$bordercolor.';';
				if ( $height ){
					$fbcontent .= 'height:'.$height.'px;';
				}
				if ( $width ){
					$fbcontent .= 'width:'.$width.'px;';
				}
			$fbcontent .= '" ></iframe>';
		}
		return $fbcontent;
	}
}
?>
