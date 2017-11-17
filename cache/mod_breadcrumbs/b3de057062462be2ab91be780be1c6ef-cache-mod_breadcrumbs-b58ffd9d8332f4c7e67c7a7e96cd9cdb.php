<?php die("Access Denied"); ?>#x#a:2:{s:6:"result";s:197:"<div class="moduletable   col-sm-12"><div class="module_container">
<div class="shell">

<ul class="breadcrumb">
	<li class="page-title"><span>Partneři</span></li></ul>
</div>

</div></div>";s:6:"output";a:3:{s:4:"body";s:0:"";s:4:"head";a:1:{s:6:"script";a:1:{s:15:"text/javascript";s:974:"
		;(function($){
			$(document).ready(function(){
				var varCount=30;
				var pageTitle=$('.page-title');
				var header=pageTitle.children()[0];
				var wrapper=$(document.createElement('div'));
					wrapper.addClass('page-title-inner');
				var pageTitleLeft=$(document.createElement('div')),
					pageTitleCenter=$(document.createElement('div')),
					pageTitleRight=$(document.createElement('div'));
					pageTitleLeft.addClass('page-title-left');
					pageTitleCenter.addClass('page-title-center');
					pageTitleRight.addClass('page-title-right');
				for(var j=0;j<varCount;j++){
					pageTitleLeft.append(header.cloneNode(true));
					pageTitleRight.append(header.cloneNode(true));
				}
				pageTitleCenter.append(header.cloneNode(true));
				pageTitle.children(0).remove();
				wrapper.append(pageTitleLeft);
				wrapper.append(pageTitleCenter);
				wrapper.append(pageTitleRight);
				pageTitle.append(wrapper);
			});
		})(jQuery);
	";}}s:13:"mime_encoding";s:9:"text/html";}}