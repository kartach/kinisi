!function(ns){var $,options,enqueue=function(fn){var queue=[],locked=1,working=0,fn=fn,instance=function(){queue.push([this,arguments]),locked||instance.execute()};return instance.execute=function(){if(!working){working=1,locked=0;for(var q;q=queue.shift();)fn.apply(q[0],q[1]);working=0}},instance.lock=function(){locked=0},instance},components={},initialized=0,installers=[],self=window[ns]={setup:function(o){options=o,self.init()},jquery:function(jquery){$||($=jquery,self.init())},init:function(){initialized||$&&options&&(self.$=$.initialize(options),self.plugin.execute(),initialized=1)
},plugin:enqueue(function(name,factory){factory.apply(self,[$])}),module:enqueue(function(name,factory){$.module(name,factory)}),installer:function(recipient,name,factory){if(installers[recipient]||(installers[recipient]=[]),!name)return installers[recipient];var component=components[recipient];return component.registered?component.install(name,factory):(installers[recipient].push([name,factory]),void 0)},component:function(name,options){if(!name)return components;if(!options)return components[name];if("function"==typeof options){var component=options;
return component.registered=!0,components[name]=component}var queue=[],abstractQueue=function(method,context,args){return{method:method,context:this,args:args}},abstractMethod=function(method,parent,chain){return function(){return(chain||queue).push(abstractQueue(method,this,arguments)),parent}},abstractInstance=function(instance,methods,chain){for(var i=0;i<methods.length;i++){var method=methods[i];instance[method]=abstractMethod(method,instance,chain)}return instance},abstractChain=function(name,methods){return function(){var chain=[abstractQueue(name,this,arguments)];
return queue.push(chain),abstractInstance({},methods,chain)}};queue.execute=function(){for(var component=components[name],i=0;i<queue.length;i++){var fn=queue[i];if("[object Array]"===Object.prototype.toString.call(fn))for(var chain=fn,context=component,j=0;j<chain.length;j++)context=context[chain[j].method].apply(context,chain[j].args);else component[fn.method].apply(component,fn.args)}};var component=abstractInstance(function(){component.run.apply(this.arguments)},["run","ready","module","template"]);return component.className=name,component.options=options,component.queue=queue,component.require=abstractChain("require",["library","script","stylesheet","language","template","view","done","always","fail","progress"]),window[name]=components[name]=component
}}}("FD31");FD31.setup({"environment":"static","source":"local","mode":"compressed","path":"http:\/\/192.168.9.17\/joomla\/beta_bs3\/media\/foundry\/3.1","extension":".min.js","rootPath":"http:\/\/192.168.9.17\/joomla\/beta_bs3","basePath":"http:\/\/192.168.9.17\/joomla\/beta_bs3","indexUrl":"http:\/\/192.168.9.17\/joomla\/beta_bs3\/index.php","joomla":{"version":"3.4.4","debug":false},"locale":{"lang":"en-GB"}});
