FD31.installer("Komento", "resources", function($){
$.require.template.loader({"komento\/dialogs\/error":"\n<p class=\"kmt-error-message\">Sorry, something went wrong. Please include the following information in your error report.<\/p>\n<div class=\"kmt-error-status\">\n<textarea>\nStatus:\n[%= status %]\nStatus Text:\n[%= statusText %]\nResponse Text:\n[%= responseText %]\n<\/textarea>\n<\/div>\n<div class=\"kmt-error-icon\"><\/div>\n","komento\/dialogs\/delete.affectchild":"<div style=\"text-align: center;\">\n\t<div>This comment contains replies. Do you want to delete all replies as well?<\/div>\n\t<div>\n\t\t<button class=\"delete-affectChild\">Delete all replies<\/button>\n\t\t<button class=\"delete-moveChild\">Keep all replies<\/button>\n\t<\/div>\n<\/div>\n","komento\/comment\/edit.form":"Invalid template file C:\\OpenServer\\domains\\localhost\\joomla\\beta\\components\\com_komento\\themes\\kuro\\comment\/edit.form.ejs","komento\/dialogs\/unpublish.affectchild":"<div style=\"text-align: center;\">\n<div>This will unpublish all replies as well. Are you sure to unpublish all replies?<\/div>\n<div><button class=\"unpublish-affectChild\">Unpublish all replies<\/button><\/div>\n<\/div>\n","komento\/dialogs\/delete.single":"<div style=\"text-align: center;\">\n\t<div>Do you want to delete this comment?<\/div>\n\t<div>\n\t\t<button class=\"delete-affectChild\">Delete comment<\/button>\n\t<\/div>\n<\/div>\n","komento\/comment\/item\/edit.form":"<div id=\"[%= commentId %]-edit\" class=\"editForm kmt-edit-form\">\n\t<form>\n\t\t<div class=\"kmt-edit-form-body\">\n\t\t\t<textarea class=\"editInput kmt-edit-form-input\">[%= commentText %]<\/textarea>\n\t\t<\/div>\n\t\t<button type=\"button\" class=\"saveEditButton kmt-edit-save btn btn-primary\" value=\"Save\">Save<\/button>\n\t\t<button type=\"button\" class=\"cancelEditButton kmt-edit-cancel btn btn-primary\" value=\"Cancel\">Cancel<\/button>\n\t<\/form>\n<\/div>\n","komento\/dialogs\/delete.attachment":"<div style=\"text-align: center;\">\n\t<div>Are you sure you want to delete the attachment '[%= attachmentname %]'?<\/div>\n\t<div>\n\t\t<button class=\"delete-attachment\">Delete<\/button>\n\t\t<button class=\"delete-attachment-cancel\">Cancel<\/button>\n\t<\/div>\n<\/div>\n","komento\/notifications\/new.comment":"<div class=\"kmt-notification\">\n\t<i><\/i>\n\t<span>\n\t\t[%= count %] new comment(s). <a href=\"javascript:void(0);\" class=\"reloadComments\">Reload comments<\/a>\n\t<span>\n\t<b><\/b>\n<\/div>\n","komento\/comment\/form\/uploadrow":"<div id=\"[%= id %]\" class=\"queueRow\">\n\t<a href=\"javascript:void(0);\" class=\"removeFile\"><i><\/i><\/a>\n\t<i>[%= size %] kb<\/i>\n\t<b>[%= filename %]<\/b>\n<\/div>\n"});
$.require.language.loader({"COM_KOMENTO_ERROR":"Error","COM_KOMENTO_LOADING":"Loading","COM_KOMENTO_UNPUBLISHED":"Unpublished","COM_KOMENTO_PUBLISHED":"Published","COM_KOMENTO_NOFLAG":"No Flag","COM_KOMENTO_SPAM":"Spam","COM_KOMENTO_OFFENSIVE":"Offensive","COM_KOMENTO_OFFTOPIC":"Offtopic","COM_KOMENTO_COMMENTS_LOADING":"Loading comments","COM_KOMENTO_COMMENT_EDIT":"Edit","COM_KOMENTO_COMMENT_EDIT_CANCEL":"Cancel Edit","COM_KOMENTO_COMMENT_EDITTED_BY":"Comment last edited on %1s by %2s","COM_KOMENTO_COMMENT_REPLY":"Reply","COM_KOMENTO_COMMENT_REPLY_CANCEL":"Cancel","COM_KOMENTO_COMMENT_REPORT":"Report","COM_KOMENTO_COMMENT_REPORTED":"Reported","COM_KOMENTO_COMMENT_SHARE":"Share","COM_KOMENTO_COMMENT_SHARE_CANCEL":"Cancel","COM_KOMENTO_COMMENT_LIKE":"Like","COM_KOMENTO_COMMENT_UNLIKE":"Unlike","COM_KOMENTO_COMMENT_STICK":"Stick","COM_KOMENTO_COMMENT_UNSTICK":"Unstick","COM_KOMENTO_COMMENT_WHERE_ARE_YOU":"Where are you?","COM_KOMENTO_COMMENT_PEOPLE_WHO_LIKED_THIS":"People who liked this","COM_KOMENTO_FORM_LEAVE_YOUR_COMMENTS":"Leave a comment","COM_KOMENTO_FORM_IN_REPLY_TO":"In reply to: ","COM_KOMENTO_FORM_SUBMIT":"Submit Comment","COM_KOMENTO_FORM_REPLY":"Reply","COM_KOMENTO_FORM_NOTIFICATION_SUBMITTED":"Comment posted","COM_KOMENTO_FORM_NOTIFICATION_PENDING":"Comment submitted and pending approval from admins","COM_KOMENTO_FORM_NOTIFICATION_COMMENT_REQUIRED":"Please enter some comment","COM_KOMENTO_FORM_NOTIFICATION_COMMENT_TOO_SHORT":"Comment too short","COM_KOMENTO_FORM_TNC":"Terms and Condition","COM_KOMENTO_FORM_AGREE_TNC":"Agree to","COM_KOMENTO_FORM_OR_DROP_FILES_HERE":"or drop files here","COM_KOMENTO_FORM_NOTIFICATION_NOTIFICATION_USERNAME_REQUIRED":"COM_KOMENTO_FORM_NOTIFICATION_NOTIFICATION_USERNAME_REQUIRED","COM_KOMENTO_FORM_NOTIFICATION_NAME_REQUIRED":"Name required","COM_KOMENTO_FORM_NOTIFICATION_EMAIL_REQUIRED":"Email required","COM_KOMENTO_FORM_NOTIFICATION_EMAIL_INVALID":"Invalid Email","COM_KOMENTO_FORM_NOTIFICATION_WEBSITE_REQUIRED":"Website required","COM_KOMENTO_FORM_NOTIFICATION_WEBSITE_INVALID":"Invalid Website","COM_KOMENTO_FORM_NOTIFICATION_TNC_REQUIRED":"You need to agree to Terms and Condition","COM_KOMENTO_FORM_NOTIFICATION_CAPTCHA_REQUIRED":"Captcha required","COM_KOMENTO_FORM_NOTIFICATION_SUBSCRIBED":"Subscribed!","COM_KOMENTO_FORM_NOTIFICATION_SUBSCRIBE_CONFIRMATION_REQUIRED":"Confirmation Email Sent!","COM_KOMENTO_FORM_NOTIFICATION_SUBSCRIBE_ERROR":"Subscribe error","COM_KOMENTO_FORM_NOTIFICATION_UNSUBSCRIBED":"Unsubscribed","COM_KOMENTO_FORM_NOTIFICATION_MAX_FILE_SIZE":"File size error. Maximum file size: %1s","COM_KOMENTO_FORM_NOTIFICATION_MAX_FILE_ITEM":"Maximum files error. Maximum files allowed: %1s","COM_KOMENTO_FORM_NOTIFICATION_FILE_EXTENSION":"File extension error. Allowed file extensions: %1s","COM_KOMENTO_FORM_NOTIFICATION_UPLOAD_NOT_ALLOWED":"Not allowed to upload attachment","COM_KOMENTO_FORM_LOCATION_AUTODETECT":"Detect Location","COM_KOMENTO_FORM_LOCATION_DETECTING":"Detecting...","COM_KOMENTO_BBCODE_BOLD":"Bold","COM_KOMENTO_BBCODE_ITALIC":"Italic","COM_KOMENTO_BBCODE_UNDERLINE":"Underline","COM_KOMENTO_BBCODE_LINK":"Link","COM_KOMENTO_BBCODE_LINK_TEXT":"Your text to link","COM_KOMENTO_BBCODE_PICTURE":"Picture","COM_KOMENTO_BBCODE_VIDEO":"Video","COM_KOMENTO_BBCODE_BULLETLIST":"Bullet List","COM_KOMENTO_BBCODE_NUMERICLIST":"Numeric List","COM_KOMENTO_BBCODE_BULLET":"Bullet","COM_KOMENTO_BBCODE_QUOTE":"Quote","COM_KOMENTO_BBCODE_CLEAN":"Clean","COM_KOMENTO_BBCODE_SMILE":"Smile","COM_KOMENTO_BBCODE_HAPPY":"Happy","COM_KOMENTO_BBCODE_SURPRISED":"Surprised","COM_KOMENTO_BBCODE_TONGUE":"Tongue","COM_KOMENTO_BBCODE_UNHAPPY":"Unhappy","COM_KOMENTO_BBCODE_WINK":"Wink","COM_KOMENTO_INSERT_VIDEO":"Insert Video","COM_KOMENTO_CONFIRM_DELETE_AFFECT_ALL_CHILD":"This comment contains replies. Do you want to delete all replies as well?","COM_KOMENTO_CONFIRM_DELETE":"Do you want to delete this comment?","COM_KOMENTO_DELETE_COMMENT":"Delete comment","COM_KOMENTO_DELETE_ALL_CHILD":"Delete all replies","COM_KOMENTO_DELETE_MOVE_CHILD_UP":"Keep all replies","COM_KOMENTO_DELETING":"Deleting","COM_KOMENTO_CONFIRM_PUBLISH_AFFECT_ALL_CHILD":"This comment contains replies. Do you want to publish all replies as well?","COM_KOMENTO_PUBLISH_ALL_CHILD":"Publish all replies","COM_KOMENTO_PUBLISH_SINGLE":"Publish only this comment","COM_KOMENTO_CHILD_UNPUBLISHED":"This comment contains replies. This comment and all the replies has been unpublished.","COM_KOMENTO_PARENT_PUBLISHED":"This comment has parents. This comment and all the direct parents has been published.","COM_KOMENTO_MIGRATORS_LOG_COMPLETE":"Migration completed","COM_KOMENTO_MIGRATORS_PROGRESS_DONE":"Done!","COM_KOMENTO_YES_OPTION":"Yes","COM_KOMENTO_NO_OPTION":"No","COM_KOMENTO_ACL_RECOMMENDED":"Recommended","COM_KOMENTO_PUBLISH_ITEM":"Publish item","COM_KOMENTO_UNPUBLISH_ITEM":"Unpublish item","COM_KOMENTO_SETTINGS_DATABASE_POPULATE_DEPTH_STATUS_UPDATING":"Updating","COM_KOMENTO_SETTINGS_DATABASE_POPULATE_DEPTH_STATUS_COMPLETED":"Completed","COM_KOMENTO_SETTINGS_DATABASE_POPULATE_DEPTH_STATUS_ERROR":"Error","COM_KOMENTO_SETTINGS_DATABASE_FIX_STRUCTURE_STATUS_UPDATING_STAGE1":"Updating - Normalizing [stage 1 of 2]","COM_KOMENTO_SETTINGS_DATABASE_FIX_STRUCTURE_STATUS_UPDATING_STAGE2":"Updating - Restructuring [stage 2 of 2]","COM_KOMENTO_SETTINGS_DATABASE_FIX_STRUCTURE_STATUS_ERROR":"Error","COM_KOMENTO_SETTINGS_DATABASE_FIX_STRUCTURE_STATUS_COMPLETED":"Completed"});
});
