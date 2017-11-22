<?php die("Access Denied"); ?>#x#a:2:{s:6:"result";s:2626:"<div class="moduletable "><div class="module_container">
<div id="swiper-slider_208" class="swiper-container swiper-slider "
	data-min-height="200px"
	data-height="35.46875%"
	data-autoplay="7000"
	data-loop="true"
	data-slide-effect="slide"
	
	>
	<div class="swiper-wrapper">
		
<div
class="swiper-slide "
data-slide-bg="/kinisi/images/slider/uv-1.jpg"
        
>
	<div class="swiper-slide-caption"
			data-caption-animate="fadeIn"
		data-caption-delay="200">
					<div class="camera_caption ">

			<div class="con-1">
			<div class="con-2">

										
					<h2 class="slide-title">
											Jsme tu pro vás										</h2>
		
						
						
						
				
				<div>
<p>Rádi Vás uvítáme v našem fyzioterapeutickém centru v Praze - Horních Počernicích</p>
</div>

<div><a class="btn" href="index.php?option=com_contact&amp;view=contact&amp;id=1&amp;Itemid=142" title="Kontakt">Domluvit si termín</a></div>

				
</div>
		</div>
		
			<!-- Read More link -->
			
			</div>
			</div>
</div>

<div
class="swiper-slide "
data-slide-bg="/kinisi/images/slider/uv-2.jpg"
        
>
	<div class="swiper-slide-caption"
			data-caption-animate="fadeIn"
		data-caption-delay="200">
					<div class="camera_caption ">

			<div class="con-1">
			<div class="con-2">

										
					<h2 class="slide-title">
											Individuální péče										</h2>
		
						
						
						
				
				<div>
<p>Každý zdravotní stav nebo zranění je individuální. Naši péči přizpůsobujeme přesně vašim potřebám.</p>
</div>

<div><a class="btn" href="index.php/centrum-fyzioterapie-praha">Zjistit o Kinisi více</a></div>

				
</div>
		</div>
		
			<!-- Read More link -->
			
			</div>
			</div>
</div>

<div
class="swiper-slide "
data-slide-bg="/kinisi/images/slider/slide-3.jpg"
        
>
	<div class="swiper-slide-caption"
			data-caption-animate="fadeIn"
		data-caption-delay="200">
					<div class="camera_caption ">

			<div class="con-1">
			<div class="con-2">

										
					<h2 class="slide-title">
											Buďte v kondici!										</h2>
		
						
						
						
				
				<div>
<p>Pomůžeme vám vyřešit současný problém a zabránit jeho návratu</p>
</div>

<div><a class="btn" href="index.php/fyzioterapie-praha-kontakt">Kontaktovat</a></div>

				
</div>
		</div>
		
			<!-- Read More link -->
			
			</div>
			</div>
</div>
	</div>
			    <!-- Swiper Navigation -->
	    <div class="swiper-button-prev"></div>
	    <div class="swiper-button-next"></div>
	</div>
</div></div>";s:6:"output";a:3:{s:4:"body";s:0:"";s:4:"head";a:3:{s:11:"styleSheets";a:2:{s:34:"templates/theme3447/css/swiper.css";a:2:{s:4:"type";s:8:"text/css";s:7:"options";a:0:{}}s:34:"modules/mod_swiper/css/animate.css";a:2:{s:4:"type";s:8:"text/css";s:7:"options";a:0:{}}}s:7:"scripts";a:1:{s:35:"modules/mod_swiper/js/swiper.min.js";a:2:{s:4:"type";s:15:"text/javascript";s:7:"options";a:0:{}}}s:6:"script";a:1:{s:15:"text/javascript";s:6995:"
	;(function ($, undefined) {
			$(window).load(function(){
				function isIE() {
				    var myNav = navigator.userAgent.toLowerCase();
				    return (myNav.indexOf('msie') != -1) ? parseInt(myNav.split('msie')[1]) : false;
				};
				var o = $("#swiper-slider_208");				
			    if (o.length) {
			        function getSwiperHeight(object, attr) {
			            var val = object.attr("data-" + attr), dim;
			            if (!val) {
			                return undefined;
			            }
			            dim = val.match(/(px)|(%)|(vh)$/i);
			            if (dim.length) {
			                switch (dim[0]) {
			                    case"px":
			                        return parseFloat(val);
			                    case"vh":
			                        return $(window).height() * (parseFloat(val) / 100);
			                    case"%":
			                        return object.width() * (parseFloat(val) / 100);
			                }
			            } else {
			                return undefined;
			            }
			        }

			        function toggleSwiperInnerVideos(swiper) {
			            var videos;
			            $.grep(swiper.slides, function (element, index) {
			                var $slide = $(element), video;
			                if (index === swiper.activeIndex) {
			                    videos = $slide.find("video");
			                    if (videos.length) {
			                        videos.get(0).play();
			                    }
			                } else {
			                    $slide.find("video").each(function () {
			                        this.pause();
			                    });
			                }
			            });
			        }

			        function toggleSwiperCaptionAnimation(swiper) {
			            if (isIE() && isIE() < 10) {
			                return;
			            }
			            var prevSlide = $(swiper.container), nextSlide = $(swiper.slides[swiper.activeIndex]);
			            prevSlide.find("[data-caption-animate]").each(function () {
			                var $this = $(this);
			                $this.removeClass("animated").removeClass($this.attr("data-caption-animate")).addClass("not-animated");
			            });
			            nextSlide.find("[data-caption-animate]").each(function () {
			                var $this = $(this), delay = $this.attr("data-caption-delay");
			                setTimeout(function () {
			                    $this.removeClass("not-animated").addClass($this.attr("data-caption-animate")).addClass("animated");
			                }, delay ? parseInt(delay) : 0);
			            });
			        }

			        $(document).ready(function () {
			            o.each(function () {
			                var s = $(this);
			                var pag = s.find(".swiper-pagination"), next = s.find(".swiper-button-next"), prev = s.find(".swiper-button-prev"), bar = s.find(".swiper-scrollbar"), h = getSwiperHeight(o, "height"), mh = getSwiperHeight(o, "min-height");
			                s.find(".swiper-slide").each(function () {
			                    var $this = $(this), url;
			                    if (url = $this.attr("data-slide-bg")) {
			                        $this.css({"background-image": "url(" + url + ")", "background-size": "cover"})
			                    }
			                }).end().find("[data-caption-animate]").addClass("not-animated").end();

								var slider = new Swiper(s,{
			                    autoplay: s.attr('data-autoplay') ? s.attr('data-autoplay') === "false" ? undefined : s.attr('data-autoplay') : 5000,
			                    direction: s.attr('data-direction') ? s.attr('data-direction') : "horizontal",
			                    effect: s.attr('data-slide-effect') ? s.attr('data-slide-effect') : "slide",
			                    speed: s.attr('data-slide-speed') ? s.attr('data-slide-speed') : 600,
			                    keyboardControl: s.attr('data-keyboard') === "true",
			                    mousewheelControl: s.attr('data-mousewheel') === "true",
			                    mousewheelReleaseOnEdges: s.attr('data-mousewheel-release') === "true",
			                    nextButton: next.length ? next.get(0) : null,
			                    prevButton: prev.length ? prev.get(0) : null,
			                    pagination: pag.length ? pag.get(0) : null,
			                    paginationClickable: pag.length ? pag.attr("data-clickable") !== "false" : false,
			                    paginationBulletRender: pag.length ? pag.attr("data-index-bullet") === "true" ? function (index, className) {
			                        return '<span class="' + className + '">' + (index + 1) + '</span>';
			                    } : null : null,
			                    scrollbar: bar.length ? bar.get(0) : null,
			                    scrollbarDraggable: bar.length ? bar.attr("data-draggable") !== "false" : true,
			                    scrollbarHide: bar.length ? bar.attr("data-draggable") === "false" : false,
			                    loop: s.attr('data-loop') !== "false",
			                    loopedSlides: 3,
			                    autoplayDisableOnInteraction: false,
			                    onTransitionStart: function (swiper) {
			                        toggleSwiperInnerVideos(swiper);
			                    },
			                    onTransitionEnd: function (swiper) {
			                        toggleSwiperCaptionAnimation(swiper);
			                    },
			                    onInit: function (swiper) {
			                        toggleSwiperInnerVideos(swiper);
			                        toggleSwiperCaptionAnimation(swiper);
			                        var o = $(swiper.container).find('.rd-parallax');
			                        var p = $(swiper.container).find('.slider-parallax-swiper');
			                        if(p.length){
			                        	RDParallax_autoinit('.slider-parallax-swiper');
			                        }
			                        if (o.length && window.RDParallax) {
			                            o.RDParallax({layerDirection: ($('html').hasClass("smoothscroll") || $('html').hasClass("smoothscroll-all")) && !isIE() ? "normal" : "inverse"});
			                        }
			                    }
			                });
			                $(window).on("resize", function () {
			                    var mh = getSwiperHeight(s, "min-height"),
			                    	h = getSwiperHeight(s, "height");
			                    if (h) {
			                        s.css("height", mh ? mh > h ? mh : h : h);
			                    }			                }).load(function () {
			                    s.find("video").each(function () {
			                        if (!$(this).parents(".swiper-slide-active").length) {
			                            this.pause();		                        }
			                    });
			                }).trigger("resize");
			            });
			        });
			    }
			});
	})(jQuery);
";}}s:13:"mime_encoding";s:9:"text/html";}}