<?php die("Access Denied"); ?>#x#a:2:{s:6:"result";s:1825:"<div class="moduletable   col-sm-3"><div class="module_container"><!--googleoff: all-->
	<!-- Template Default bootstrap -->
	<div class="jb cookie bottom white green ">
	    
		<!-- BG color -->
		<div class='jb cookie-bg white'></div>
	    
		<h2>Webové stránky k poskytování služeb a analýze návštěvnosti používají soubory cookie</h2>
	     
		<p>Používáním webu společnosti Kinisi, s.r.o. souhlasíte s												<a href="/kinisi/index.php/ochrana-soukromi/6-podminky-uziti">Podmínkami užití.</a>
									</p>
	    
		<div class="btn btn-primary jb accept green">Rozumím</div>
	    
	</div>
	
	
<!--googleon: all-->


	
	<script type="text/javascript">
	    jQuery(document).ready(function () { 
		
			function setCookie(c_name,value,exdays)
			{
				var exdate=new Date();
				exdate.setDate(exdate.getDate() + exdays);
				var c_value=escape(value) + ((exdays==null) ? "" : "; expires="+exdate.toUTCString()) + "; path=/";
				document.cookie=c_name + "=" + c_value;
			}
			
			function readCookie(name) {
				var nameEQ = name + "=";
				var jb = document.cookie.split(';');
				for(var i=0;i < jb.length;i++) {
					var c = jb[i];
					while (c.charAt(0)==' ') c = c.substring(1,c.length);
						if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
					}
				return null;
			}
		    
			var $jb_cookie = jQuery('.jb.cookie');
			var $jb_infoaccept = jQuery('.jb.accept');
			var jbcookies = readCookie('jbcookies');
	
			if(!(jbcookies == "yes")){
			
				$jb_cookie.delay(1000).slideDown('fast'); 
	
				$jb_infoaccept.click(function(){
					setCookie("jbcookies","yes",365);
					jQuery.post('http://localhost/kinisi/', 'set_cookie=1', function(){});
					$jb_cookie.slideUp('slow');
				});
			} 
	    });
	</script>

</div></div>";s:6:"output";a:3:{s:4:"body";s:0:"";s:4:"head";a:1:{s:11:"styleSheets";a:1:{s:54:"/kinisi/modules/mod_jbcookies/assets/css/jbcookies.css";a:2:{s:4:"type";s:8:"text/css";s:7:"options";a:4:{s:8:"relative";b:0;s:8:"pathOnly";b:0;s:13:"detectBrowser";b:1;s:11:"detectDebug";b:1;}}}}s:13:"mime_encoding";s:9:"text/html";}}