<?php
/*------------------------------------------------------------------------
# @author - Alonzo Weatherby
# copyright Copyright (C) 2013 forkliftcertification.us. All Rights Reserved.
# @license - http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
# Websites: http://forkliftcertification.us/
# Technical Support: http://www.forkliftcertification.us/extensions/index.php/contact-us
-------------------------------------------------------------------------*/
// no direct access
defined( '_JEXEC' ) or die;
$document = JFactory::getDocument();
$document->addStyleSheet('modules/mod_facebookslider/assets/style.css');
$fb_id = $params->get('fb_id');
$margintop = $params->get('margintop');
$fbwidth = $params->get('fbwidth');
$fbox1_width = trim($params->get( 'fbwidth' )+10);
$fbheight = $params->get('fbheight');
$fbwidth = $params->get('fbwidth');
$head=$params->get('header', false);
?>

<div id="facebook_slider">
<?Php if($params->get('position')=='left'){ ?>
	<div id="fbox1" style="left: -<?php echo $fbox1_width;?>px; top: <?php echo $margintop;?>px; z-index: 10000;">
		<div id="fobx2" style="text-align: left;width:<?php echo $fbwidth; ?>px;height:<?php echo $fbheight; ?>px;">
			<a class="open" id="fblink" href="#"></a><img style="top: 0px;right:-50px;" src="modules/mod_facebookslider/assets/facebook-icon.png" alt="">
<?php } else { ?>

      	<div id="fbox1" style="right: -<?php echo $fbox1_width;?>px; top: <?php echo $margintop;?>px; z-index: 10000;">
		<div id="fobx2" style="text-align: left;width:<?php echo $fbwidth; ?>px;height:<?php echo $fbheight; ?>px;">
			<a class="open" id="fblink" href="#"></a><img style="top: 0px;left:-50px;" src="modules/mod_facebookslider/assets/facebook-icon.png" alt="">
<?php } ?>			
			<iframe src="http://www.facebook.com/plugins/likebox.php?id=<?php echo $fb_id; ?>&amp;locale=en_GB&amp;width=<?php echo trim( $params->get( 'fbwidth' )+3);  ?>&amp;height=<?php echo trim( $params->get( 'fbheight' )+3);  ?>&amp;colorscheme=light&amp;show_border=false&amp;show_faces=true&amp;border_color&amp;stream=<?php echo trim( $params->get( 'stream' ) );?>&amp;
              header=<?php echo $head;?>&amp;
			>"
			scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:<?php echo trim( $params->get( 'fbwidth' )+3);  ?>px; height:<?php echo trim( $params->get( 'fbheight' )+3);  ?>px;" allowtransparency="true"></iframe>
		</div>
	<div style="font-size: 9px; color: #808080; font-weight: normal; font-family: tahoma,verdana,arial,sans-serif; line-height: 1.28; text-align: right; direction: ltr;"><a href="https://www.nationalcprassociation.com" target="_blank" style="color: #808080;" title="www.nationalcprassociation">national cpr association</a></div>
	</div>
</div>
<?php
	if (trim( $params->get( 'loadjquery' ) ) == 'true'){
	$document->addScript("http://code.jquery.com/jquery-latest.min.js");}
?>
	
	<script type="text/javascript">
		jQuery.noConflict();
		jQuery(function (){
			jQuery(document).ready(function()
				{
					jQuery.noConflict();
					jQuery(function (){
						jQuery("#fbox1").hover(function(){ 
						jQuery('#fbox1').css('z-index',101009);
						<?Php if($params->get('position')=='left'){ ?>
						jQuery(this).stop(true,false).animate({left:  0}, 500); },
						<?php } else { ?>
                        jQuery(this).stop(true,false).animate({right:  0}, 500); },
						<?php } ?>	
						function(){ 
						jQuery('#fbox1').css('z-index',10000);
						<?Php if($params->get('position')=='left'){ ?>
						jQuery("#fbox1").stop(true,false).animate({left: -<?php echo $params->get( 'fbwidth' )+10; ?>}, 500); });
						<?php } else { ?>
						jQuery("#fbox1").stop(true,false).animate({right: -<?php echo $params->get( 'fbwidth' )+10; ?>}, 500); });
					    <?php } ?>
						});}); });
	</script>

