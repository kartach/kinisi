bbcodeSettings = {
		previewParserPath:	'',
		markupSet: [{className: 'boldbutton',name: 'Bold',name: 'Tučně',key: 'B',openWith: '[b]',closeWith: '[/b]'},{className: 'italicbutton',name: 'Italic',name: 'Kurziva',key: 'I',openWith: '[i]',closeWith: '[/i]'},{className: 'underlinebutton',name: 'Underline',name: 'Podtržené',key: 'U',openWith: '[u]',closeWith: '[/u]'},{className: 'strokebutton',name: 'Stroke',name: 'Přeškrtnuté',key: 'T',openWith: '[strike]',closeWith: '[/strike]'},{className: 'subscriptbutton',name: 'Subscript',name: 'Dolní index',key: 'T',openWith: '[sub]',closeWith: '[/sub]'},{className: 'supscriptbutton',name: 'Supscript',name: 'Horní index',key: 'T',openWith: '[sup]',closeWith: '[/sup]'},{className: 'sizebutton', name:'Velikost písma: Vyberte velikost fontu a aplikujte na aktuální výběr', key:'S', openWith:'[size=[![Text size]!]]', closeWith:'[/size]',	dropMenu :[
						{name: 'Very very small', openWith:'[size=1]', closeWith:'[/size]' },
						{name: 'Very small', openWith:'[size=2]', closeWith:'[/size]' },
						{name: 'Small', openWith:'[size=3]', closeWith:'[/size]' },
						{name: 'Normal', openWith:'[size=4]', closeWith:'[/size]' },
						{name: 'Big', openWith:'[size=5]', closeWith:'[/size]' },
						{name: 'Bigger', openWith:'[size=6]', closeWith:'[/size]' }
						]},{className: 'colors', name:'Barva', key:'', openWith:'[color=[![Color]!]]', closeWith:'[/color]',dropMenu: [
						{name: 'Black',	openWith:'[color=black]', 	closeWith:'[/color]', className:'col1-1' },
						{name: 'Orange',	openWith:'[color=orange]', 	closeWith:'[/color]', className:'col1-2' },
						{name: 'Red', 	openWith:'[color=red]', 	closeWith:'[/color]', className:'col1-3' },

						{name: 'Blue', 	openWith:'[color=blue]', 	closeWith:'[/color]', className:'col2-1' },
						{name: 'Purple', openWith:'[color=purple]', 	closeWith:'[/color]', className:'col2-2' },
						{name: 'Green', 	openWith:'[color=green]', 	closeWith:'[/color]', className:'col2-3' },

						{name: 'White', 	openWith:'[color=white]', 	closeWith:'[/color]', className:'col3-1' },
						{name: 'Gray', 	openWith:'[color=gray]', 	closeWith:'[/color]', className:'col3-2' }
						]},{separator:'|' },{className: 'bulletedlistbutton',name: 'Unordered List',name: 'Nečislovaný seznam',openWith: '[ul]\n  [li]',closeWith: '[/li]\n  [li][/li]\n[/ul]'},{className: 'numericlistbutton',name: 'Ordered List',name: 'Číslovaný seznam',openWith: '[ol]\n  [li]',closeWith: '[/li]\n  [li][/li]\n[/ol]'},{className: 'listitembutton',name: 'Li',name: 'Položka seznamu',openWith: '\n  [li]',closeWith: '[/li]'},{className: 'hrbutton',name: 'HR',name: 'Horizontal line',openWith: '[hr]'},{className: 'alignleftbutton',name: 'Left',name: 'Zarovnat vlevo',openWith: '[left]',closeWith: '[/left]'},{className: 'centerbutton',name: 'Center',name: 'Zarovnat na střed',openWith: '[center]',closeWith: '[/center]'},{className: 'alignrightbutton',name: 'Right',name: 'Zarovnat vpravo',openWith: '[right]',closeWith: '[/right]'},{separator:'|' },{className: 'quotebutton',name: 'Quote',name: 'Citace',openWith: '[quote]',closeWith: '[/quote]'},{className: 'codesimplebutton',name: 'Code',name: 'Kód',openWith: '[code]',closeWith: '[/code]'},{name:'code', className: 'codemodalboxbutton', beforeInsert:function() {
						jQuery('#code-modal-submit').click(function(event) {
							event.preventDefault();

							jQuery('#modal-code').modal('hide');
						});

						jQuery('#modal-code').modal(
							{overlayClose:true, autoResize:true, minHeight:500, minWidth:800, onOpen: function (dialog) {
								dialog.overlay.fadeIn('slow', function () {
									dialog.container.slideDown('slow', function () {
										dialog.data.fadeIn('slow');
									});
								});
							}});
						}
					},{className: 'tablebutton',name: 'table',openWith: '[table]\n  [tr]\n   [td][/td]\n   [td][/td]\n  [/tr]',closeWith: '\n  [tr]\n   [td][/td]\n   [td][/td]\n [/tr]\n[/table] \n'},{className: 'spoilerbutton',name: 'Spoiler',name: 'Spoiler',openWith: '[spoiler]',closeWith: '[/spoiler]'},{className: 'hiddentextbutton',name: 'Hide',name: 'Skrýt text pro hosty',openWith: '[hide]',closeWith: '[/hide]'},{className: 'confidentialbutton',name: 'confidential',name: 'Důvěrná informace:',openWith: '[confidential]',closeWith: '[/confidential]'},{separator:'|' },{name:'Odkaz obrázku', className: 'picturebutton', beforeInsert:function() {
						jQuery('#picture-modal-submit').click(function(event) {
							event.preventDefault();

							jQuery('#modal-picture').modal('hide');
						});

						jQuery('#modal-picture').modal(
							{overlayClose:true, autoResize:true, minHeight:500, minWidth:800, onOpen: function (dialog) {
								dialog.overlay.fadeIn('slow', function () {
									dialog.container.slideDown('slow', function () {
										dialog.data.fadeIn('slow');
									});
								});
							}});
						}
					},{name:'Odkaz', className: 'linkbutton', beforeInsert:function() {
						jQuery('#link-modal-submit').click(function(event) {
							event.preventDefault();

							jQuery('#modal-link').modal('hide');
						});

						jQuery('#modal-link').modal(
							{overlayClose:true, autoResize:true, minHeight:500, minWidth:800, onOpen: function (dialog) {
								dialog.overlay.fadeIn('slow', function () {
									dialog.container.slideDown('slow', function () {
										dialog.data.fadeIn('slow');
									});
								});
							}});
						}
					},{separator:'|' },{name: 'Video', className: 'videodropdownbutton', dropMenu: [{name:  'Provider', className: 'videourlprovider', beforeInsert:function() {
							jQuery('#videosettings-modal-submit').click(function(event) {
								event.preventDefault();

								jQuery('#modal-video-settings').modal('hide');
							});

							jQuery('#modal-video-settings').modal(
								{overlayClose:true, autoResize:true, minHeight:500, minWidth:800, onOpen: function (dialog) {
									dialog.overlay.fadeIn('slow', function () {
										dialog.container.slideDown('slow', function () {
											dialog.data.fadeIn('slow');
										});
									});
								}});
							} },
						{name: 'Video', className: 'videoURLbutton', beforeInsert:function() {
							jQuery('#videourlprovider-modal-submit').click(function(event) {
								event.preventDefault();

								jQuery('#modal-video-urlprovider').modal('hide');
							});

							jQuery('#modal-video-urlprovider').modal(
								{overlayClose:true, autoResize:true, minHeight:500, minWidth:800, onOpen: function (dialog) {
									dialog.overlay.fadeIn('slow', function () {
										dialog.container.slideDown('slow', function () {
											dialog.data.fadeIn('slow');
										});
									});
								}});
							} }
						]},{name:'Mapa', className: 'mapbutton', beforeInsert:function() {
						jQuery('#map-modal-submit').click(function(event) {
							event.preventDefault();

							jQuery('#modal-map').modal('hide');
						});

						jQuery('#modal-map').modal(
							{overlayClose:true, autoResize:true, minHeight:500, minWidth:800, onOpen: function (dialog) {
								dialog.overlay.fadeIn('slow', function () {
									dialog.container.slideDown('slow', function () {
										dialog.data.fadeIn('slow');
									});
								});
							}});
						}
					},{name:'poll-settings', className: 'pollbutton', beforeInsert:function() {
						jQuery('#poll-settings-modal-submit').click(function(event) {
							event.preventDefault();

							jQuery('#modal-poll-settings').modal('hide');
						});

						jQuery('#modal-poll-settings').modal(
							{overlayClose:true, autoResize:true, minHeight:500, minWidth:800, onOpen: function (dialog) {
								dialog.overlay.fadeIn('slow', function () {
									dialog.container.slideDown('slow', function () {
										dialog.data.fadeIn('slow');
									});
								});
							}});
						}
					},{className: 'tweetbutton',name: 'Tweet',openWith: '[tweet]',closeWith: '[/tweet]'},{className: 'soundcloudbutton',name: 'soundcloud',openWith: '[soundcloud]',closeWith: '[/soundcloud]'},{className: 'instagrambutton',name: 'instagram',openWith: '[instagram]',closeWith: '[/instagram]'},{name:'Emoticons', className: 'emoticonsbutton', beforeInsert:function() {
						jQuery('#emoticons-modal-submit').click(function(event) {
							event.preventDefault();

							jQuery('#modal-emoticons').modal('hide');
						});

						jQuery('#modal-emoticons').modal(
							{overlayClose:true, autoResize:true, minHeight:500, minWidth:800, onOpen: function (dialog) {
								dialog.overlay.fadeIn('slow', function () {
									dialog.container.slideDown('slow', function () {
										dialog.data.fadeIn('slow');
									});
								});
							}});
						}
					},{separator:'|' },]};