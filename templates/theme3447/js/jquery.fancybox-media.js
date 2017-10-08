/*!
 * Media helper for fancyBox
 * version: 1.0.6 (Fri, 14 Jun 2013)
 * @requires fancyBox v2.0 or later
 */
(function($){"use strict";var F=$.fancybox,format=function(c,d,e){e=e||'';if($.type(e)==="object"){e=$.param(e,true)}$.each(d,function(a,b){c=c.replace('$'+a,b||'')});if(e.length){c+=(c.indexOf('?')>0?'&':'?')+e}return c};F.helpers.media={defaults:{youtube:{matcher:/(youtube\.com|youtu\.be|youtube-nocookie\.com)\/(watch\?v=|v\/|u\/|embed\/?)?(videoseries\?list=(.*)|[\w-]{11}|\?listType=(.*)&list=(.*)).*/i,params:{autoplay:1,autohide:1,fs:1,rel:0,hd:1,wmode:'opaque',enablejsapi:1},type:'iframe',url:'//www.youtube.com/embed/$3'},vimeo:{matcher:/(?:vimeo(?:pro)?.com)\/(?:[^\d]+)?(\d+)(?:.*)/,params:{autoplay:1,hd:1,show_title:1,show_byline:1,show_portrait:0,fullscreen:1},type:'iframe',url:'//player.vimeo.com/video/$1'},metacafe:{matcher:/metacafe.com\/(?:watch|fplayer)\/([\w\-]{1,10})/,params:{autoPlay:'yes'},type:'swf',url:function(a,b,c){c.swf.flashVars='playerVars='+$.param(b,true);return'//www.metacafe.com/fplayer/'+a[1]+'/.swf'}},dailymotion:{matcher:/dailymotion.com\/video\/(.*)\/?(.*)/,params:{additionalInfos:0,autoStart:1},type:'swf',url:'//www.dailymotion.com/swf/video/$1'},twitvid:{matcher:/twitvid\.com\/([a-zA-Z0-9_\-\?\=]+)/i,params:{autoplay:0},type:'iframe',url:'//www.twitvid.com/embed.php?guid=$1'},twitpic:{matcher:/twitpic\.com\/(?!(?:place|photos|events)\/)([a-zA-Z0-9\?\=\-]+)/i,type:'image',url:'//twitpic.com/show/full/$1/'},instagram:{matcher:/(instagr\.am|instagram\.com)\/p\/([a-zA-Z0-9_\-]+)\/?/i,type:'image',url:'//$1/p/$2/media/?size=l'},google_maps:{matcher:/maps\.google\.([a-z]{2,3}(\.[a-z]{2})?)\/(\?ll=|maps\?)(.*)/i,type:'iframe',url:function(a){return'//maps.google.'+a[1]+'/'+a[3]+''+a[4]+'&output='+(a[4].indexOf('layer=c')>0?'svembed':'embed')}}},beforeLoad:function(a,b){var c=b.href||'',type=false,what,item,rez,params;for(what in a){if(a.hasOwnProperty(what)){item=a[what];rez=c.match(item.matcher);if(rez){type=item.type;params=$.extend(true,{},item.params,b[what]||($.isPlainObject(a[what])?a[what].params:null));c=$.type(item.url)==="function"?item.url.call(this,rez,params,b):format(item.url,rez,params);break}}}if(type){b.href=c;b.type=type;b.autoHeight=false}}}}(jQuery));