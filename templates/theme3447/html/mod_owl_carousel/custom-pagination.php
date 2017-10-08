<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_camera_slideshow
 *
 * @copyright   Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
JHtml::addIncludePath(JPATH_BASE.'/components/com_content/helpers');
$document = JFactory::getDocument();
?>
<?php
	$countItems = 0;
	foreach ($list as $key => $item){
		$countItems++;
	}
?>
<!--Custom pagination-->
<div class="owl-carousel owl-carousel_<?php echo $module->id; ?>_2 mod_owl_carousel mod_owl_carousel__<?php echo $moduleclass_sfx; ?> custom-indent" id="module_<?php echo $module->id; ?>_2"
data-margin="0"

data-xs-margin="0"
data-sm-margin="0"
data-md-margin="0"
data-lg-margin="0"
data-stage-padding="0"
data-xs-stage-padding="0"
data-sm-stage-padding="0"
data-md-stage-padding="0"
data-lg-stage-padding="0"

data-autoplay="<?php if ($params->get('autoplay')): ?>true<?php else: ?>false<?php endif;?>"

data-nav="false"
data-dots="false"
data-lg-items="<?php
	if($countItems==4){
		$countItems = 3;
	} else if($countItems>3){
		echo '3';
	} else {
		echo $countItems;
	}
?>"
data-md-items="<?php
	if($countItems<=2){
		echo $countItems;
	} else {
		echo '3';
	}
?>"
data-sm-items="<?php
	if($countItems<=2){
		echo $countItems;
	} else {
		echo '2';
	}
?>"
data-xs-items="<?php
	if($countItems<=2){
		echo $countItems;
	} else {
		echo '1';
	}
?>"
data-items="1"
data-loop="true"
>
	<?php
	foreach ($list as $key => $item) : ?>
		<div id="item_<?php echo $item->id; ?>_2">
			<div class="owl-item_content"><?php require JModuleHelper::getLayoutPath('mod_owl_carousel', '_custom-pagination-item'); ?></div>
		</div>	
	<?php endforeach;	?>
</div>
<!--Custom pagination end-->


<div class="owl-carousel custom-pagination owl-carousel_<?php echo $module->id; ?> mod_owl_carousel mod_owl_carousel__<?php echo $moduleclass_sfx; ?> original_indent" id="module_<?php echo $module->id; ?>"
data-margin="<?php if($params->get('items_padding_0')!=0){
	$res_0 = (int)$params->get('items_padding_0');
	echo $res_0+1;
} else {
	echo $params->get('items_padding_0');
}
?>"
<?php if($params->get('use_responsive')==1):?>
data-xs-margin="<?php if($params->get('items_padding_480')!=0){
	$res_480 = (int)$params->get('items_padding_480');
	echo $res_480+1;
} else {
	echo $params->get('items_padding_480');
}
?>"
data-sm-margin="<?php if($params->get('items_padding_768')!=0){
	$res_768 = (int)$params->get('items_padding_768');
	echo $res_768+1;
} else {
	echo $params->get('items_padding_768');
}
?>"
data-md-margin="<?php if($params->get('items_padding_992')!=0){
	$res_992 = (int)$params->get('items_padding_992');
	echo $res_992+1;
} else {
	echo $params->get('items_padding_992');
}
?>"
data-lg-margin="<?php if($params->get('items_padding_1200')!=0){
	$res_1200 = (int)$params->get('items_padding_1200');
	echo $res_1200+1;
} else {
	echo $params->get('items_padding_1200');
}
?>"
<?php endif; ?>
data-stage-padding="<?php echo $params->get('scene_padding_0')?>"
<?php if($params->get('use_responsive')==1):?>
data-xs-stage-padding="<?php echo $params->get('scene_padding_480')?>"
data-sm-stage-padding="<?php echo $params->get('scene_padding_768')?>"
data-md-stage-padding="<?php echo $params->get('scene_padding_992')?>"
data-lg-stage-padding="<?php echo $params->get('scene_padding_1200')?>"
<?php endif; ?>

data-autoplay="<?php if ($params->get('autoplay')): ?>true<?php else: ?>false<?php endif;?>"

data-nav="<?php if ($params->get('navigation')): ?>true<?php else: ?>false<?php endif;?>"
data-dots="<?php if ($params->get('pagination')): ?>true<?php else: ?>false<?php endif;?>"
data-md-items="3"
data-lg-items="<?php if($params->get('items')<1):?>1<?php else: ?><?php echo $params->get('items')?><?php endif;?>"
data-sm-items="<?php if($params->get('items')==1):?>1<?php else: ?>2<?php endif;?>"
data-xs-items="<?php if($params->get('items')==1):?>1<?php else: ?>1<?php endif;?>"
data-items="1"
data-loop="true"
>
	<?php
	foreach ($list as $key => $item) : ?>
		<div id="item_<?php echo $item->id; ?>">
			<div class="owl-item_content"><?php require JModuleHelper::getLayoutPath('mod_owl_carousel', '_custom-pagination'); ?></div>
		</div>	
	<?php endforeach;	?>
</div>
<?php
	if($params->get('autoplay')==1){
		$autoplay = $params->get('autoplay_speed');
		$autoplay_opt = $autoplay;
		if($autoplay!=5000){
			$autoplay_opt = $params->get('autoplay_speed');
		}
	} else {
		$autoplay_opt = 5000;
	}
	$script='
	;(function ($) {
	    $(document).ready(function(){
	    	var o = $(".owl-carousel_'.$module->id.'");
    	    if (o.length) {
    	        var isTouch = "ontouchstart" in window;
    
    	        function preventScroll(e) {
    	            e.preventDefault();
    	        }
    
                var responsive = {};
                var aliaces = ["-", "-xs-", "-sm-", "-md-", "-lg-"], values = [0, 480, 768, 992, 1200], i, j;
                for (i = 0; i < values.length; i++) {
                    responsive[values[i]] = {};
                    for (j = i; j >= -1; j--) {
                        if (!responsive[values[i]]["items"] && o.attr("data" + aliaces[j] + "items")) {
                            responsive[values[i]]["items"] = j < 0 ? 1 : parseInt(o.attr("data" + aliaces[j] + "items"));
                        }
                        if (!responsive[values[i]]["stagePadding"] && responsive[values[i]]["stagePadding"] !== 0 && o.attr("data" + aliaces[j] + "stage-padding")) {
                            responsive[values[i]]["stagePadding"] = j < 0 ? 0 : parseInt(o.attr("data" + aliaces[j] + "stage-padding"));
                        }
                        if (!responsive[values[i]]["margin"] && responsive[values[i]]["margin"] !== 0 && o.attr("data" + aliaces[j] + "margin")) {
                            responsive[values[i]]["margin"] = j < 0 ? 30 : parseInt(o.attr("data" + aliaces[j] + "margin"));
                        }
                    }
                }
                o.owlCarousel({
                    autoplay: o.attr("data-autoplay") === "true",
                    autoplayTimeout: '.$autoplay_opt.',
                    loop: o.attr("data-loop") !== "false",
                    nav: o.attr("data-nav") === "true",
                    dots: o.attr("data-dots") === "true",
                    dotsEach: o.attr("data-dots-each") ? parseInt(o.attr("data-dots-each")) : false,
                    responsive: responsive,
                    navText: [],
                    mouseDrag: false,
                    touchDrag: false,';
                    if($countItems>3){

						$script .=	'center: true,';
                    }
                $script .='    center: true,
                    onInitialized: function () {
						$(".owl-carousel_'.$module->id.' .owl-item").each(function(){
							if($(this).hasClass("cloned-gallery1")){
								$(this).find("a.fancybox-thumb").attr("data-fancybox-group", "cloned-gallery1");
							}
							if($(this).hasClass("cloned-gallery2")){
								$(this).find("a.fancybox-thumb").attr("data-fancybox-group", "cloned-gallery2");
							}
						});
                    },
                    onDrag: function(e){

                    }
                });
    	    }

    	    var thumb = $(".owl-carousel_'.$module->id.'_2");
    	    if (thumb.length) {
    	        var isTouch = "ontouchstart" in window;
    
    	        function preventScroll(e) {
    	            e.preventDefault();
    	        }
    
                var responsive = {};
                var aliaces = ["-", "-xs-", "-sm-", "-md-", "-lg-"], values = [0, 480, 768, 992, 1200], i, j;
                for (i = 0; i < values.length; i++) {
                    responsive[values[i]] = {};
                    for (j = i; j >= -1; j--) {
                        if (!responsive[values[i]]["items"] && thumb.attr("data" + aliaces[j] + "items")) {
                            responsive[values[i]]["items"] = j < 0 ? 1 : parseInt(thumb.attr("data" + aliaces[j] + "items"));
                        }
                        if (!responsive[values[i]]["stagePadding"] && responsive[values[i]]["stagePadding"] !== 0 && thumb.attr("data" + aliaces[j] + "stage-padding")) {
                            responsive[values[i]]["stagePadding"] = j < 0 ? 0 : parseInt(thumb.attr("data" + aliaces[j] + "stage-padding"));
                        }
                        if (!responsive[values[i]]["margin"] && responsive[values[i]]["margin"] !== 0 && thumb.attr("data" + aliaces[j] + "margin")) {
                            responsive[values[i]]["margin"] = j < 0 ? 30 : parseInt(thumb.attr("data" + aliaces[j] + "margin"));
                        }
                    }
                }
                thumb.owlCarousel({
                    autoplay: thumb.attr("data-autoplay") === "true",
                    autoplayTimeout: '.$autoplay_opt.',
                    loop: thumb.attr("data-loop") !== "false",
                    nav: thumb.attr("data-nav") === "true",
                    dots: thumb.attr("data-dots") === "true",
                    dotsEach: thumb.attr("data-dots-each") ? parseInt(thumb.attr("data-dots-each")) : false,
                    responsive: responsive,
                    navText: [],
                    ';
                    if($countItems>2){

						$script .=	'center: true,';
                    }
                    

        $script .=  'mouseDrag: false,
                    touchDrag: false,
                    onInitialized: function () {
						$(".owl-carousel_'.$module->id.' .owl-item").each(function(){
							if($(this).hasClass("cloned-gallery1")){
								$(this).find("a.fancybox-thumb").attr("data-fancybox-group", "cloned-gallery1");
							}
							if($(this).hasClass("cloned-gallery2")){
								$(this).find("a.fancybox-thumb").attr("data-fancybox-group", "cloned-gallery2");
							}
						});
                    }
                });
    	    }

			o.on(\'click\', \'.owl-next\', function () {
			    thumb.trigger(\'next.owl.carousel\')
			});
			o.on(\'click\', \'.owl-prev\', function () {
			    thumb.trigger(\'prev.owl.carousel\')
			});
	

			// Start Carousel
			o.on(\'dragged.owl.carousel\', function (e) {
			';
			if($countItems==4){
				$script .='
					var t = e.item.index-('.$countItems.');
					thumb.trigger(\'to.owl.carousel\', [t-1, 300, true]);
				';
			} else {

				$script .='
				var t = e.item.index-('.$countItems.');
				thumb.trigger(\'to.owl.carousel\', [t, 300, true]);
				';
			}
			$script .='		
					
						
						console.log("OWL", t);
			});


			thumb.on(\'click\', \'.owl-item\', function() {
			    var i = $(this).index()-('.$countItems.');
			    thumb.trigger(\'to.owl.carousel\', [i, 300, true]);
			    o.trigger(\'to.owl.carousel\', [i, 300, true]);
			    console.log("THUMB", i);
			});


	    });
	})(jQuery);';
$document->addScriptdeclaration($script);
?>











