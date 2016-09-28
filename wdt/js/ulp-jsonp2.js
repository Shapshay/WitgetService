var ulp_active_window_id = false;
var ulp_subscribing = false;
var ulp_onload_displayed = false;
var ulp_onscroll_displayed = false;
var ulp_onexit_displayed = false;
var ulp_position_margin = 16;
var ulp_cookie_value;
var ulp_onload_popup;
var ulp_onload_delay;
var ulp_onscroll_mode;
var ulp_onscroll_popup;
var ulp_onscroll_offset;
var ulp_onexit_mode;
var ulp_onexit_popup;
var ulp_ga_tracking;
var ulp_css3_enable = "off";
var ulp_onexit_limits;
var ulp_facebook_appid;
var ulp_google_clientid;
var ulp_google_apikey;
var ulp_css3_animations_in = ['bounceIn','bounceInUp','bounceInDown','bounceInLeft','bounceInRight','fadeIn','fadeInUp','fadeInDown','fadeInLeft','fadeInRight','flipInX','flipInY','lightSpeedIn','rotateIn','rotateInDownLeft','rotateInDownRight','rotateInUpLeft','rotateInUpRight','rollIn','zoomIn','zoomInUp','zoomInDown','zoomInLeft','zoomInRight'];
var ulp_css3_animations_out = ['bounceOut','bounceOutUp','bounceOutDown','bounceOutLeft','bounceOutRight','fadeOut','fadeOutUp','fadeOutDown','fadeOutLeft','fadeOutRight','flipOutX','flipOutY','lightSpeedOut','rotateOut','rotateOutDownLeft','rotateOutDownRight','rotateOutUpLeft','rotateOutUpRight','rollOut','zoomOut','zoomOutUp','zoomOutDown','zoomOutLeft','zoomOutRight'];

var ulp_ajax_url = 'http://witgetservice.com/wdt/ajax.php'; 
function ulp_open(id) {
	if (ulp_active_window_id) ulp_self_close();
	ulp_ga_track(id, "layered-popup", "show");
	return _ulp_open(id, true);
}
function _ulp_open(id, main_window) {
	jQuery("#ulp-"+id).each(function() {
		ulp_active_window_id = id;
		if (main_window) {
			jQuery("#ulp-"+id+"-overlay").fadeIn(300);
			if (jQuery(this).attr("data-close") == "on") {
				jQuery("#ulp-"+id+"-overlay").bind("click", function($) {
					ulp_close(id);
				});
			}
		}
		var viewport = {
			width: Math.max(320, jQuery(window).width()),
			height: Math.max(320, jQuery(window).height())
		};
		var width = parseInt(jQuery(this).attr("data-width"), 10);
		var height = parseInt(jQuery(this).attr("data-height"), 10);
		
		var scale = Math.min((viewport.width-20)/width, viewport.height/height);
		if (scale > 1) scale = 1;
		width = parseInt(width*scale, 10);
		height = parseInt(height*scale, 10);
		
		var position = jQuery(this).attr("data-position");
		jQuery(this).css({
			"width": width+"px",
			"height": height+"px"
		});
		switch (position) {
			case 'top-left':
				jQuery(this).css({
					"top": ulp_position_margin + "px",
					"left": ulp_position_margin + "px"
				});
				break;
			case 'top-center':
				jQuery(this).css({
					"top": ulp_position_margin + "px",
					"left": "50%",
					"margin-left": "-"+parseInt(width/2, 10)+"px"
				});
				break;
			case 'top-right':
				jQuery(this).css({
					"top": ulp_position_margin + "px",
					"right": ulp_position_margin + "px"
				});
				break;
			case 'bottom-left':
				jQuery(this).css({
					"bottom": ulp_position_margin + "px",
					"left": ulp_position_margin + "px"
				});
				break;
			case 'bottom-center':
				jQuery(this).css({
					"bottom": ulp_position_margin + "px",
					"left": "50%",
					"margin-left": "-"+parseInt(width/2, 10)+"px"
				});
				break;
			case 'bottom-right':
				jQuery(this).css({
					"bottom": ulp_position_margin + "px",
					"right": ulp_position_margin + "px"
				});
				break;
			case 'middle-left':
				jQuery(this).css({
					"top": "50%",
					"margin-top": "-"+parseInt(height/2, 10)+"px",
					"left": ulp_position_margin + "px"
				});
				break;
			case 'middle-right':
				jQuery(this).css({
					"top": "50%",
					"margin-top": "-"+parseInt(height/2, 10)+"px",
					"right": ulp_position_margin + "px"
				});
				break;
			default:
				jQuery(this).css({
					"top": "50%",
					"left": "50%",
					"margin-left": "-"+parseInt(width/2, 10)+"px",
					"margin-top": "-"+parseInt(height/2, 10)+"px"
				});
				break;
		}
		var content = jQuery(this).find(".ulp-content");
		jQuery(content).css({
			"width": width+"px",
			"height": height+"px",
		});
		jQuery(content).find(".ulp-layer").each(function() {
			var layer = this;
			var confirmation_layer = jQuery(layer).attr("data-confirmation");
			if (confirmation_layer == "on" && main_window) {
				jQuery(layer).hide();
				return;
			} else if (confirmation_layer == "off" && !main_window) {
				return;
			}
			jQuery(layer).show();
			var layer_content_encoded = jQuery(layer).attr("data-base64");
			if (layer_content_encoded) {
				jQuery(layer).html(ulp_decode64(jQuery(layer).html()));
			}
			var layer_left = jQuery(layer).attr("data-left");
			var layer_top = jQuery(layer).attr("data-top");
			var layer_width = jQuery(layer).attr("data-width");
			var layer_height = jQuery(layer).attr("data-height");
			var layer_font_size = jQuery(layer).attr("data-font-size");
			var layer_appearance = jQuery(layer).attr("data-appearance");
			var layer_appearance_delay = parseInt(jQuery(layer).attr("data-appearance-delay"), 10);
			var layer_appearance_speed = parseInt(jQuery(layer).attr("data-appearance-speed"), 10);
			if (layer_width) jQuery(layer).css("width", parseInt(layer_width*scale, 10)+"px");
			if (layer_height) {
				jQuery(layer).css("height", parseInt(layer_height*scale, 10)+"px");
				var layer_scrollbar = jQuery(layer).attr("data-scrollbar");
				if (layer_scrollbar && layer_scrollbar == "on") {
					jQuery(layer).css("overflow", "hidden");
					jQuery(layer).scrollTop(0);
					jQuery(layer).perfectScrollbar({suppressScrollX: true});
				}
			}
			if (layer_font_size) jQuery(layer).css("font-size", Math.max(4, parseInt(layer_font_size*scale, 10))+"px");
			
			if (ulp_css3_enable != "on") {
				if (ulp_css3_animations_in.indexOf(layer_appearance) >= 0) {
					layer_appearance = "fade-in";
				}
			}
			
			switch (layer_appearance) {
				case "slide-down":
					jQuery(layer).css({
						"left": parseInt(layer_left*scale, 10)+"px",
						"top": "-"+parseInt(2*viewport.height)+"px"
					});
					setTimeout(function() {
						jQuery(layer).animate({
							"top": parseInt(layer_top*scale, 10)+"px"
						}, layer_appearance_speed);
					}, layer_appearance_delay);
					break;
				case "slide-up":
					jQuery(layer).css({
						"left": parseInt(layer_left*scale, 10)+"px",
						"top": parseInt(2*viewport.height)+"px"
					});
					setTimeout(function() {
						jQuery(layer).animate({
							"top": parseInt(layer_top*scale, 10)+"px"
						}, layer_appearance_speed);
					}, layer_appearance_delay);
					break;
				case "slide-left":
					jQuery(layer).css({
						"left": parseInt(2*viewport.width)+"px",
						"top": parseInt(layer_top*scale, 10)+"px"
					});
					setTimeout(function() {
						jQuery(layer).animate({
							"left": parseInt(layer_left*scale, 10)+"px"
						}, layer_appearance_speed);
					}, layer_appearance_delay);
					break;
				case "slide-right":
					jQuery(layer).css({
						"left": "-"+parseInt(2*viewport.width)+"px",
						"top": parseInt(layer_top*scale, 10)+"px"
					});
					setTimeout(function() {
						jQuery(layer).animate({
							"left": parseInt(layer_left*scale, 10)+"px"
						}, layer_appearance_speed);
					}, layer_appearance_delay);
					break;
				case "fade-in":
					jQuery(layer).css({
						"left": parseInt(layer_left*scale, 10)+"px",
						"top": parseInt(layer_top*scale, 10)+"px",
						"display": "none"
					});
					setTimeout(function() {
						jQuery(layer).fadeIn(layer_appearance_speed);
					}, layer_appearance_delay);
					break;
				default:
					if (ulp_css3_animations_in.indexOf(layer_appearance) >= 0) {
						jQuery(layer).css({
							"left": parseInt(layer_left*scale, 10)+"px",
							"top": parseInt(layer_top*scale, 10)+"px",
							"animation-duration": parseInt(layer_appearance_speed, 10)+"ms",
							"-webkit-animation-duration": parseInt(layer_appearance_speed, 10)+"ms",
							"-ms-animation-duration": parseInt(layer_appearance_speed, 10)+"ms",
							"-moz-animation-duration": parseInt(layer_appearance_speed, 10)+"ms",
							"animation-delay": parseInt(layer_appearance_delay, 10)+"ms",
							"-webkit-animation-delay": parseInt(layer_appearance_delay, 10)+"ms",
							"-ms-animation-delay": parseInt(layer_appearance_delay, 10)+"ms",
							"-moz-animation-delay": parseInt(layer_appearance_delay, 10)+"ms"
						});
						jQuery(layer).attr("class", "ulp-layer ulp-animated ulp-"+layer_appearance);
					} else {
						jQuery(layer).css({
							"left": parseInt(layer_left*scale, 10)+"px",
							"top": parseInt(layer_top*scale, 10)+"px"
						});
					}
					break;
			}
		});
		jQuery(this).show();
	});
	return false;
}
function ulp_close(id) {
	jQuery("#ulp-"+id).each(function() {
		ulp_active_window_id = false;
		ulp_subscribing = false;
		var layer_appearance_speed = 500;
		var content = jQuery(this).find(".ulp-content");
		var viewport = {
			width: Math.max(320, jQuery(window).width()),
			height: Math.max(320, jQuery(window).height())
		};
		jQuery("#ulp-"+id+"-overlay").unbind("click");
		jQuery(content).find(".ulp-layer").each(function() {
			var layer = this;
			var layer_appearance = jQuery(layer).attr("data-appearance");
			
			if (ulp_css3_enable != "on") {
				if (ulp_css3_animations_in.indexOf(layer_appearance) >= 0) {
					layer_appearance = "fade-in";
				}
			}
			switch (layer_appearance) {
				case "slide-down":
					jQuery(layer).animate({
						"top": "-"+parseInt(2*viewport.height)+"px"
					}, layer_appearance_speed);
					break;
				case "slide-up":
					jQuery(layer).animate({
						"top": parseInt(2*viewport.height)+"px"
					}, layer_appearance_speed);
					break;
				case "slide-left":
					jQuery(layer).animate({
						"left": parseInt(2*viewport.width)+"px"
					}, layer_appearance_speed);
					break;
				case "slide-right":
					jQuery(layer).animate({
						"left": "-"+parseInt(2*viewport.width)+"px"
					}, layer_appearance_speed);
					break;
				case "fade-in":
					jQuery(layer).fadeOut(layer_appearance_speed);
					break;
				default:
					if (ulp_css3_animations_in.indexOf(layer_appearance) >= 0) {
						layer_appearance = ulp_css3_animations_out[ulp_css3_animations_in.indexOf(layer_appearance)];
						jQuery(layer).css({
							"animation-duration": parseInt(layer_appearance_speed, 10)+"ms",
							"-webkit-animation-duration": parseInt(layer_appearance_speed, 10)+"ms",
							"-ms-animation-duration": parseInt(layer_appearance_speed, 10)+"ms",
							"-moz-animation-duration": parseInt(layer_appearance_speed, 10)+"ms",
							"animation-delay": "0s",
							"-webkit-animation-delay": "0s",
							"-ms-animation-delay": "0s",
							"-moz-animation-delay": "0s"
						});
						jQuery(layer).attr("class", "ulp-layer ulp-animated ulp-"+layer_appearance);
					} else {
						jQuery(layer).css({
							"display": "none"
						});
					}
					break;
			}
			setTimeout(function() {
				var layer_content_encoded = jQuery(layer).attr("data-base64");
				if (layer_content_encoded) {
					jQuery(layer).html(ulp_encode64(jQuery(layer).html()));
				}
			}, layer_appearance_speed);		
		});
		setTimeout(function() {
			jQuery("#ulp-"+id).hide();
			jQuery("#ulp-"+id+"-overlay").fadeOut(300);
		}, layer_appearance_speed);		
	});
	return false;
}
function ulp_self_close() {
	ulp_close(ulp_active_window_id);
	return false;
}
function ulp_subscribe(object) {
	if (ulp_subscribing) return false;
	ulp_subscribing = true;
	
	var inline_id = jQuery(object).parents(".ulp-inline-window").attr("id");
	if (inline_id) {
		inline_id = inline_id.replace("ulp-inline-", "");
		_ulp_inline_subscribe(inline_id);
		return false;
	}
	alert('s1');
	var name, email, phone, message;
	jQuery(".ulp-input-error").removeClass("ulp-input-error");
	alert('s2');
	var button_icon_loading = "";
	var button_icon = jQuery("#ulp-"+ulp_active_window_id).find('.ulp-submit').attr("data-icon");
	if (!button_icon || button_icon == "" || button_icon == "fa-noicon") button_icon = "";
	else {
		button_icon = "<i class='fa "+button_icon+"'></i>&nbsp; ";
		button_icon_loading = "<i class='fa fa-spinner fa-spin'></i>&nbsp; ";
	}
	
	var button_label = jQuery("#ulp-"+ulp_active_window_id).find('.ulp-submit').attr("data-label");
	var button_label_loading = jQuery("#ulp-"+ulp_active_window_id).find('.ulp-submit').attr("data-loading");
	if (!button_label_loading || button_label_loading == "") button_label_loading = "Loading...";
	jQuery("#ulp-"+ulp_active_window_id).find('.ulp-submit').html(button_icon_loading+button_label_loading);

	name = jQuery("#ulp-"+ulp_active_window_id).find('[name="ulp-name"]').val();
	if (name) name = ulp_encode64(name);
	else name = '';
	email = jQuery("#ulp-"+ulp_active_window_id).find('[name="ulp-email"]').val();
	if (email) email = ulp_encode64(email);
	else email = '';
	phone = jQuery("#ulp-"+ulp_active_window_id).find('[name="ulp-phone"]').val();
	if (phone) phone = ulp_encode64(phone);
	else phone = '';
	message = jQuery("#ulp-"+ulp_active_window_id).find('[name="ulp-message"]').val();
	if (message) message = ulp_encode64(message);
	else message = '';

	jQuery.ajax({
		url: ulp_ajax_url, 
		data: {
			"name": name,
			"email": email,
			"phone": phone,
			"message": message,
			"action": "subscribe",
			"ulp": ulp_active_window_id
		},
		dataType: "jsonp",
		success: function(data) {
			jQuery("#ulp-"+ulp_active_window_id).find('.ulp-submit').html(button_icon+button_label);
			//alert(data);
			//ulp_subscribing = false;
			try {
				var status = data.status;
				if (status == "OK") {
					if (ulp_active_window_id == ulp_onload_popup || ulp_onexit_limits == "on") {
						ulp_write_cookie("ulp-onload-"+ulp_onload_popup, ulp_cookie_value, 180);
						ulp_onload_displayed = true;
					}
					if (ulp_active_window_id == ulp_onscroll_popup || ulp_onexit_limits == "on") {
						ulp_write_cookie("ulp-onscroll-"+ulp_onscroll_popup, ulp_cookie_value, 180);
						ulp_onscroll_displayed = true;
					}
					if (ulp_active_window_id == ulp_onexit_popup || ulp_onexit_limits == "on") {
						ulp_write_cookie("ulp-onexit-"+ulp_onexit_popup, ulp_cookie_value, 180);
						ulp_onexit_displayed = true;
					}
					ulp_ga_track(ulp_active_window_id, "layered-popup", "subscribe");
					_ulp_open(ulp_active_window_id, false);
					var close_delay = 0;
					if (data.close_delay) close_delay = data.close_delay;
					var redirect_url = data.return_url;
					setTimeout(function() {
						if (redirect_url.length > 0) location.href = redirect_url;
						else {
							ulp_subscribing = false;
							ulp_self_close();
						}
					}, close_delay);		
				} else if (status == "ERROR") {
					ulp_subscribing = false;
					if (data.name == 'ERROR') jQuery("#ulp-"+ulp_active_window_id).find('[name="ulp-name"]').addClass("ulp-input-error");
					if (data.email == 'ERROR') jQuery("#ulp-"+ulp_active_window_id).find('[name="ulp-email"]').addClass("ulp-input-error");
					if (data.phone == 'ERROR') jQuery("#ulp-"+ulp_active_window_id).find('[name="ulp-phone"]').addClass("ulp-input-error");
					if (data.message == 'ERROR') jQuery("#ulp-"+ulp_active_window_id).find('[name="ulp-message"]').addClass("ulp-input-error");
				} else {
					ulp_subscribing = false;
					jQuery("#ulp-"+ulp_active_window_id).find('.ulp-submit').html(button_icon+"Error!");
				}
			} catch(error) {
				ulp_subscribing = false;
				jQuery("#ulp-"+ulp_active_window_id).find('.ulp-submit').html(button_icon+"Error!");
			}
		}
	});
	return false;
}
function _ulp_inline_subscribe(inline_id) {
	var name, email, phone, message;
	jQuery(".ulp-input-error").removeClass("ulp-input-error");
	
	var button_icon_loading = "";
	var button_icon = jQuery("#ulp-inline-"+inline_id).find('.ulp-submit').attr("data-icon");
	if (!button_icon || button_icon == "" || button_icon == "fa-noicon") button_icon = "";
	else {
		button_icon = "<i class='fa "+button_icon+"'></i>&nbsp; ";
		button_icon_loading = "<i class='fa fa-spinner fa-spin'></i>&nbsp; ";
	}
	var button_label = jQuery("#ulp-inline-"+inline_id).find('.ulp-submit').attr("data-label");
	var button_label_loading = jQuery("#ulp-inline-"+inline_id).find('.ulp-submit').attr("data-loading");
	if (!button_label_loading || button_label_loading == "") button_label_loading = "Loading...";
	jQuery("#ulp-inline-"+inline_id).find('.ulp-submit').html(button_icon_loading+button_label_loading);

	name = jQuery("#ulp-inline-"+inline_id).find('[name="ulp-name"]').val();
	if (name) name = ulp_encode64(name);
	else name = '';
	email = jQuery("#ulp-inline-"+inline_id).find('[name="ulp-email"]').val();
	if (email) email = ulp_encode64(email);
	else email = '';
	phone = jQuery("#ulp-inline-"+inline_id).find('[name="ulp-phone"]').val();
	if (phone) phone = ulp_encode64(phone);
	else phone = '';
	message = jQuery("#ulp-inline-"+inline_id).find('[name="ulp-message"]').val();
	if (message) message = ulp_encode64(message);
	else message = '';

	jQuery.ajax({
		url: ulp_ajax_url, 
		data: {
			"name": name,
			"email": email,
			"phone": phone,
			"message": message,
			"action": "subscribe",
			"ulp": inline_id
		},
		dataType: "jsonp",
		success: function(data) {
			jQuery("#ulp-inline-"+inline_id).find('.ulp-submit').html(button_icon+button_label);
			ulp_subscribing = false;
			try {
				var status = data.status;
				if (status == "OK") {
					if (inline_id == ulp_onload_popup || ulp_onexit_limits == "on") {
						ulp_write_cookie("ulp-onload-"+ulp_onload_popup, ulp_cookie_value, 180);
						ulp_onload_displayed = true;
					}
					if (inline_id == ulp_onscroll_popup || ulp_onexit_limits == "on") {
						ulp_write_cookie("ulp-onscroll-"+ulp_onscroll_popup, ulp_cookie_value, 180);
						ulp_onscroll_displayed = true;
					}
					if (inline_id == ulp_onexit_popup || ulp_onexit_limits == "on") {
						ulp_write_cookie("ulp-onexit-"+ulp_onexit_popup, ulp_cookie_value, 180);
						ulp_onexit_displayed = true;
					}
					ulp_ga_track(inline_id, "layered-inline", "subscribe");
					_ulp_inline_open(inline_id, false, true);
					var redirect_url = data.return_url;
					setTimeout(function() {
						_ulp_inline_open(inline_id, true, true);
						if (redirect_url.length > 0) location.href = redirect_url;
					}, 3000);		
				} else if (status == "ERROR") {
					if (data.name == 'ERROR') jQuery("#ulp-inline-"+inline_id).find('[name="ulp-name"]').addClass("ulp-input-error");
					if (data.email == 'ERROR') jQuery("#ulp-inline-"+inline_id).find('[name="ulp-email"]').addClass("ulp-input-error");
					if (data.phone == 'ERROR') jQuery("#ulp-inline-"+inline_id).find('[name="ulp-phone"]').addClass("ulp-input-error");
					if (data.message == 'ERROR') jQuery("#ulp-inline-"+inline_id).find('[name="ulp-message"]').addClass("ulp-input-error");
				} else {
					jQuery("#ulp-inline-"+inline_id).find('.ulp-submit').html(button_icon+"Error!");
				}
			} catch(error) {
				jQuery("#ulp-inline-"+inline_id).find('.ulp-submit').html(button_icon+"Error!");
			}
		}
	});
	return false;
}
function ulp_utf8encode(string) {
	string = string.replace(/\x0d\x0a/g, "\x0a");
	var output = "";
	for (var n = 0; n < string.length; n++) {
		var c = string.charCodeAt(n);
		if (c < 128) {
			output += String.fromCharCode(c);
		} else if ((c > 127) && (c < 2048)) {
			output += String.fromCharCode((c >> 6) | 192);
			output += String.fromCharCode((c & 63) | 128);
		} else {
			output += String.fromCharCode((c >> 12) | 224);
			output += String.fromCharCode(((c >> 6) & 63) | 128);
			output += String.fromCharCode((c & 63) | 128);
		}
	}
	return output;
}
function ulp_encode64(input) {
	var keyString = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
	var output = "";
	var chr1, chr2, chr3, enc1, enc2, enc3, enc4;
	var i = 0;
	input = ulp_utf8encode(input);
	while (i < input.length) {
		chr1 = input.charCodeAt(i++);
		chr2 = input.charCodeAt(i++);
		chr3 = input.charCodeAt(i++);
		enc1 = chr1 >> 2;
		enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
		enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
		enc4 = chr3 & 63;
		if (isNaN(chr2)) {
			enc3 = enc4 = 64;
		} else if (isNaN(chr3)) {
			enc4 = 64;
		}
		output = output + keyString.charAt(enc1) + keyString.charAt(enc2) + keyString.charAt(enc3) + keyString.charAt(enc4);
	}
	return output;
}
function ulp_inline_open(resize) {
	jQuery(".ulp-inline-window").each(function() {
		var inline_id = jQuery(this).attr("id");
		inline_id = inline_id.replace("ulp-inline-", "");
		if (!resize) ulp_ga_track(inline_id, "layered-inline", "show");
		_ulp_inline_open(inline_id, true, resize);
	});
}
function _ulp_inline_open(id, main_window, resize) {
	jQuery("#ulp-inline-"+id).each(function() {
		viewport_width = Math.max(320, jQuery(this).parent().innerWidth());
		var width = parseInt(jQuery(this).attr("data-width"), 10);
		var height = parseInt(jQuery(this).attr("data-height"), 10);
		
		var scale = viewport_width/width;
		if (scale > 1) scale = 1;
		width = parseInt(width*scale, 10);
		height = parseInt(height*scale, 10);
		jQuery(this).css({
			"width": width+"px",
			"height": height+"px"
		});
		var content = jQuery(this).find(".ulp-content");
		jQuery(content).css({
			"width": width+"px",
			"height": height+"px",
		});
		jQuery(content).find(".ulp-layer").each(function() {
			var layer = this;
			var confirmation_layer = jQuery(layer).attr("data-confirmation");
			if (confirmation_layer == "on" && main_window) {
				if (resize) jQuery(layer).fadeOut(300);
				else jQuery(layer).hide();
				return;
			} else if (confirmation_layer == "off" && !main_window) {
				return;
			}
			jQuery(layer).show();
			if (!resize) {
				var layer_content_encoded = jQuery(layer).attr("data-base64");
				if (layer_content_encoded) {
					jQuery(layer).html(ulp_decode64(jQuery(layer).html()));
				}
			}
			var layer_left = jQuery(layer).attr("data-left");
			var layer_top = jQuery(layer).attr("data-top");
			var layer_width = jQuery(layer).attr("data-width");
			var layer_height = jQuery(layer).attr("data-height");
			var layer_font_size = jQuery(layer).attr("data-font-size");
			if (layer_width) jQuery(layer).css("width", parseInt(layer_width*scale, 10)+"px");
			if (layer_height) {
				jQuery(layer).css("height", parseInt(layer_height*scale, 10)+"px");
				var layer_scrollbar = jQuery(layer).attr("data-scrollbar");
				if (layer_scrollbar && layer_scrollbar == "on") {
					jQuery(layer).css("overflow", "hidden");
					jQuery(layer).scrollTop(0);
					jQuery(layer).perfectScrollbar({suppressScrollX: true});
				}
			}
			if (layer_font_size) jQuery(layer).css("font-size", Math.max(4, parseInt(layer_font_size*scale, 10))+"px");
			jQuery(layer).css({
				"left": parseInt(layer_left*scale, 10)+"px",
				"top": parseInt(layer_top*scale, 10)+"px"
			});
			if (!main_window) {
				jQuery(layer).css({
					"display": "none"
				});
				jQuery(layer).fadeIn(500);
			}
		});
		jQuery(this).fadeIn(300);
	});
	return false;
}
function ulp_ga_track(id, type, action) {
	if (ulp_ga_tracking != "on") return;
	try {
		var title = '';
		if (type == 'layered-popup') {
			if (jQuery("#ulp-"+id).attr("data-title").length > 0) title = jQuery("#ulp-"+id).attr("data-title");
		} else if (type == 'layered-inline') {
			if (jQuery("#ulp-inline-"+id).attr("data-title").length > 0) title = jQuery("#ulp-inline-"+id).attr("data-title");
		}
		if (title.length > 0) {
			if (typeof _gaq == 'object') {
				_gaq.push(['_trackEvent', type, action, title, 1, false]);
			} else if (typeof _trackEvent == 'function') { 
				_trackEvent(type, action, title, 1, false);
			} else if (typeof __gaTracker == 'function') { 
				__gaTracker('send', 'event', type, action, title);
			} else if (typeof ga == 'function') {
				ga('send', 'event', type, action, title);
			}
		}
	} catch(error) {
	
	}
}
function jquery_loaded() {
	jQuery(window).resize(function() {
		ulp_inline_open(true);
		if (ulp_active_window_id) {
			var viewport = {
				width: Math.max(320, jQuery(window).width()),
				height: Math.max(320, jQuery(window).height())
			};
			var width = parseInt(jQuery("#ulp-"+ulp_active_window_id).attr("data-width"), 10);
			var height = parseInt(jQuery("#ulp-"+ulp_active_window_id).attr("data-height"), 10);
			var scale = Math.min((viewport.width-20)/width, viewport.height/height);
			if (scale > 1) scale = 1;
			width = parseInt(width*scale, 10);
			height = parseInt(height*scale, 10);

			var position = jQuery("#ulp-"+ulp_active_window_id).attr("data-position");
			jQuery("#ulp-"+ulp_active_window_id).css({
				"width": width+"px",
				"height": height+"px"
			});
			switch (position) {
				case 'top-left':
					break;
				case 'top-center':
					jQuery("#ulp-"+ulp_active_window_id).css({
						"margin-left": "-"+parseInt(width/2, 10)+"px"
					});
					break;
				case 'top-right':
					break;
				case 'bottom-left':
					break;
				case 'bottom-center':
					jQuery("#ulp-"+ulp_active_window_id).css({
						"margin-left": "-"+parseInt(width/2, 10)+"px"
					});
					break;
				case 'bottom-right':
					break;
				case 'middle-left':
					jQuery("#ulp-"+ulp_active_window_id).css({
						"margin-top": "-"+parseInt(height/2, 10)+"px"
					});
					break;
				case 'middle-right':
					jQuery("#ulp-"+ulp_active_window_id).css({
						"margin-top": "-"+parseInt(height/2, 10)+"px"
					});
					break;
				default:
					jQuery("#ulp-"+ulp_active_window_id).css({
						"margin-left": "-"+parseInt(width/2, 10)+"px",
						"margin-top": "-"+parseInt(height/2, 10)+"px"
					});
					break;
			}
			var content = jQuery("#ulp-"+ulp_active_window_id).find(".ulp-content");
			jQuery(content).css({
				"width": width+"px",
				"height": height+"px",
			});
			jQuery(content).find(".ulp-layer").each(function() {
				var layer = this;
				var layer_left = jQuery(layer).attr("data-left");
				var layer_top = jQuery(layer).attr("data-top");
				var layer_width = jQuery(layer).attr("data-width");
				var layer_height = jQuery(layer).attr("data-height");
				var layer_font_size = jQuery(layer).attr("data-font-size");
				if (layer_width) jQuery(layer).css("width", parseInt(layer_width*scale, 10)+"px");
				if (layer_height) {
					jQuery(layer).css("height", parseInt(layer_height*scale, 10)+"px");
					var layer_scrollbar = jQuery(layer).attr("data-scrollbar");
					if (layer_scrollbar && layer_scrollbar == "on") {
						jQuery(layer).css("overflow", "hidden");
						jQuery(layer).scrollTop(0);
						jQuery(layer).perfectScrollbar({suppressScrollX: true});
					}
				}
				if (layer_font_size) jQuery(layer).css("font-size", Math.max(4, parseInt(layer_font_size*scale, 10))+"px");
				jQuery(layer).css({
					"left": parseInt(layer_left*scale, 10)+"px",
					"top": parseInt(layer_top*scale, 10)+"px"
				});
			});
		}
	});
	jQuery(document).keyup(function(e) {
		if (ulp_active_window_id) {
			if (jQuery("#ulp-"+ulp_active_window_id).attr("data-close") == "on") {
				if (e.keyCode == 27) ulp_self_close();
			}
		}
	});
	//ulp_init();
	jQuery(document).ready(function() {
		//ulp_init();
		ulp_open('cBmyUml7Izu2bX9N');
	});
}
function check_jquery() {
	if (window.jQuery) {
		jquery_loaded();
	} else {
		window.setTimeout(check_jquery, 100);
	}
}
check_jquery();