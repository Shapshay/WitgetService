var ulp_active_window_id = false;
var ulp_subscribing = false;
var ulp_initialized = false;
var ulp_onload_displayed = false;
var ulp_onscroll_displayed = false;
var ulp_onexit_displayed = false;
var ulp_position_margin = 16;
var ulp_cookie_value;
var ulp_onload_mode;
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

/*
var ulp_baseurl = (function() {
	var re = new RegExp('js/ulp-jsonp(\.min)?\.js.*'),
	scripts = document.getElementsByTagName('script');
	for (var i = 0, ii = scripts.length; i < ii; i++) {
		var path = scripts[i].getAttribute('src');
		if(re.test(path)) return path.replace(re, '');
	}
})();
var ulp_ajax_url = ulp_baseurl + "ajax.php";
*/

//var ulp_ajax_url = 'http://witgetservice.com/wdt/ajax.php'; 

function ulp_init() {
	if (ulp_initialized) return;
	ulp_initialized = true;
	if (typeof FB != 'undefined') {
		FB.Event.subscribe('edge.create',function() {
			ulp_share('facebook-like');
		});
	}
	if (typeof twttr != 'undefined') {
		twttr.ready(function (twttr) {
			twttr.events.bind('tweet', function(event) {
				ulp_share('twitter-tweet');
			});
			twttr.events.bind('follow', function(event) {
				ulp_share('twitter-follow');
			});
		});
	}
	var str_id = decodeURIComponent((new RegExp('[?|&]ulp=' + '([^&;]+?)(&|#|;|$)').exec(location.search)||[,""])[1].replace(/\+/g, '%20'))||null;
	if (!str_id) str_id = '';
	var inline_ids = new Array();
	jQuery(".ulp-inline").each(function() {
		var inline_id = jQuery(this).attr("data-id");
		if (inline_id) {
			jQuery(this).attr("id", "ulp-inline-container-"+inline_id);
			inline_ids.push(inline_id);
		}
	});
	
	jQuery.ajax({
		url: ulp_ajax_url,
		data: {
			"action"		: "get-data",
			"inline_ids"	: inline_ids.join(","),
			"ulp"			: str_id
		},
		dataType: "jsonp",
		success: function(data) {
			//alert(data.html);
			try {
				if (data.status == "OK") {
					for (var id in data.inline_popups){
						inline_html = data.inline_popups[id];
						jQuery("#ulp-inline-container-"+id).html(inline_html);
					}
					ulp_cookie_value = data.cookie_value;
					ulp_onload_mode = data.onload_mode;
					ulp_onload_popup = data.onload_popup;
					ulp_onload_delay = parseInt(data.onload_delay, 10);
					ulp_onscroll_mode = data.onscroll_mode;
					ulp_onscroll_popup = data.onscroll_popup;
					ulp_onscroll_offset = parseInt(data.onscroll_offset, 10);
					ulp_onexit_mode = data.onexit_mode;
					ulp_onexit_popup = data.onexit_popup;
					ulp_ga_tracking = data.ga_tracking;
					ulp_onexit_limits = data.onexit_limits;
					ulp_facebook_appid = data.facebook_appid;
					ulp_google_clientid = data.google_clientid;
					ulp_google_apikey = data.google_apikey;
					ulp_inline_open(false);
					if (typeof ulp_custom_onload_popup !== 'undefined') {
						ulp_onload_popup = ulp_custom_onload_popup;
					}
					if (typeof ulp_custom_onexit_popup !== 'undefined') {
						ulp_onexit_popup = ulp_custom_onexit_popup;
					}
					if (data.fa_enable == "on") {
						jQuery('head').append("<link href='"+ulp_baseurl+"css/font-awesome.min.css' rel='stylesheet' type='text/css'>");
					}
					if (data.css3_enable == "on") {
						ulp_css3_enable = "on";
					}
					jQuery('body').append(data.html);
					if (typeof FB != 'undefined') {
						if (ulp_facebook_appid != "") {
							FB.init({
								appId      : ulp_facebook_appid,
								cookie     : true,
								xfbml      : true,
								version    : "v2.0"
							});
						}
						FB.XFBML.parse();
					}
					if (typeof twttr != 'undefined') {
						twttr.widgets.load();
					}
					if (typeof gapi != 'undefined' && typeof gapi.plusone != 'undefined') {
						gapi.plusone.go();
					}
					if (typeof IN != 'undefined' && typeof IN.parse != 'undefined') {
						IN.parse();
					}
					if (str_id == '') ulp_start();
					else ulp_open(str_id);
				}
			} catch(error) {
			}
		}
	});
}
function ulp_start() {
	var ulp_onload_cookie = ulp_read_cookie("ulp-onload-"+ulp_onload_popup);
	if (ulp_onload_popup != "" && jQuery("#ulp-"+ulp_onload_popup).length != 0 && ulp_onload_mode != "none" && ulp_onload_cookie != ulp_cookie_value) {
		if (parseInt(ulp_onload_delay, 10) <= 0) {
			if (!ulp_active_window_id && !ulp_onload_displayed) {
				if (ulp_onload_mode == "once-session") ulp_write_cookie("ulp-onload-"+ulp_onload_popup, ulp_cookie_value, 0);
				else if (ulp_onload_mode == "once-only") ulp_write_cookie("ulp-onload-"+ulp_onload_popup, ulp_cookie_value, 180);
				ulp_open(ulp_onload_popup);
				ulp_onload_displayed = true;
			}
		} else {
			setTimeout(function() {
				if (!ulp_active_window_id && !ulp_onload_displayed) {
					if (ulp_onload_mode == "once-session") ulp_write_cookie("ulp-onload-"+ulp_onload_popup, ulp_cookie_value, 0);
					else if (ulp_onload_mode == "once-only") ulp_write_cookie("ulp-onload-"+ulp_onload_popup, ulp_cookie_value, 180);
					ulp_open(ulp_onload_popup);
					ulp_onload_displayed = true;
				}
			}, parseInt(ulp_onload_delay, 10)*1000);
		}
	}
	var ulp_onexit_cookie = ulp_read_cookie("ulp-onexit-"+ulp_onexit_popup);
	if (ulp_onexit_popup != "" && jQuery("#ulp-"+ulp_onexit_popup).length != 0 && ulp_onexit_mode != "none" && ulp_onexit_cookie != ulp_cookie_value) {
		jQuery(document).bind('mouseleave', function(e) {
			var mouseY = parseInt(e.pageY - jQuery(window).scrollTop(), 10);
			if (!ulp_active_window_id && !ulp_onexit_displayed && mouseY < 20) {
				if (ulp_onexit_mode == "once-session") ulp_write_cookie("ulp-onexit-"+ulp_onexit_popup, ulp_cookie_value, 0);
				else if (ulp_onexit_mode == "once-only") ulp_write_cookie("ulp-onexit-"+ulp_onexit_popup, ulp_cookie_value, 180);
				ulp_open(ulp_onexit_popup);
				ulp_onexit_displayed = true;
			}
		});
	}
	var ulp_onscroll_cookie = ulp_read_cookie("ulp-onscroll-"+ulp_onscroll_popup);
	if (ulp_onscroll_popup != "" && jQuery("#ulp-"+ulp_onscroll_popup).length != 0 && ulp_onscroll_mode != "none" && ulp_onscroll_cookie != ulp_cookie_value) {
		jQuery(window).scroll(function(e) {
			if (!ulp_active_window_id && !ulp_onscroll_displayed) {
				var position = jQuery(window).scrollTop();
				if (position > ulp_onscroll_offset) {
					if (ulp_onscroll_mode == "once-session") ulp_write_cookie("ulp-onscroll-"+ulp_onscroll_popup, ulp_cookie_value, 0);
					else if (ulp_onscroll_mode == "once-only") ulp_write_cookie("ulp-onscroll-"+ulp_onscroll_popup, ulp_cookie_value, 180);
					ulp_open(ulp_onscroll_popup);
					ulp_onscroll_displayed = true;
				}
			}
		});
	}
}
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
	
	var name, email, phone, message;
	jQuery(".ulp-input-error").removeClass("ulp-input-error");
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
	//if (name) name = ulp_encode64(name);
	//else name = '';
	email = jQuery("#ulp-"+ulp_active_window_id).find('[name="ulp-email"]').val();
	//if (email) email = ulp_encode64(email);
	//else email = '';
	//phone = jQuery("#ulp-"+ulp_active_window_id).find('[name="ulp-phone"]').val();
	//if (phone) phone = ulp_encode64(phone);
	//else phone = '';
	//message = jQuery("#ulp-"+ulp_active_window_id).find('[name="ulp-message"]').val();
	//if (message) message = ulp_encode64(message);
	//else message = '';
	//msg_id = jQuery("#ulp-"+ulp_active_window_id).find('[name="ulp-msg_id"]').val();
	//if (msg_id) msg_id = ulp_encode64(msg_id);
	//else msg_id = '';
	//msg_theme = jQuery("#ulp-"+ulp_active_window_id).find('[name="ulp-msg_theme"]').val();
	w_id = jQuery("#ulp-"+ulp_active_window_id).find('[name="ulp-w_id"]').val();
	//if (msg_theme) msg_theme = ulp_encode64(msg_theme);
	//else msg_theme = '';
	//alert(ulp_ajax_url);
	jQuery.ajax({
		url: ulp_ajax_url, 
		data: {
			"name": name,
			"email": email,
			//"phone": phone,
			//"msg_id": msg_id,
			"w_id": w_id,
			//"msg_theme": msg_theme,
			//"message": message,
			"action": "subscribe",
			"ulp": ulp_active_window_id
		},
		dataType: "jsonp",
		success: function(data) {
			jQuery("#ulp-"+ulp_active_window_id).find('.ulp-submit').html(button_icon+button_label);
			//ulp_subscribing = false;
			try {
				var status = data.status;
				//alert(data.sql);
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
					//if (data.phone == 'ERROR') jQuery("#ulp-"+ulp_active_window_id).find('[name="ulp-phone"]').addClass("ulp-input-error");
					//if (data.message == 'ERROR') jQuery("#ulp-"+ulp_active_window_id).find('[name="ulp-message"]').addClass("ulp-input-error");
				} else {
					ulp_subscribing = false;
					jQuery("#ulp-"+ulp_active_window_id).find('.ulp-submit').html(button_icon+"Error!");
				}
			} catch(error) {
				ulp_subscribing = false;
				jQuery("#ulp-"+ulp_active_window_id).find('.ulp-submit').html(button_icon+"Error!");
				//alert("e");
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

function ulp_read_cookie(key) {
	var pairs = document.cookie.split("; ");
	for (var i = 0, pair; pair = pairs[i] && pairs[i].split("="); i++) {
		if (pair[0] === key) return pair[1] || "";
	}
	return null;
}
function ulp_write_cookie(key, value, days) {
	if (days) {
		var date = new Date();
		date.setTime(date.getTime()+(days*24*60*60*1000));
		var expires = "; expires="+date.toGMTString();
	} else var expires = "";
	document.cookie = key+"="+value+expires+"; path=/";
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
function ulp_utf8decode(input) {
	var string = "";
	var i = 0;
	var c = c1 = c2 = 0;
	while ( i < input.length ) {
		c = input.charCodeAt(i);
		if (c < 128) {
			string += String.fromCharCode(c);
			i++;
		} else if ((c > 191) && (c < 224)) {
			c2 = input.charCodeAt(i+1);
			string += String.fromCharCode(((c & 31) << 6) | (c2 & 63));
			i += 2;
		} else {
			c2 = input.charCodeAt(i+1);
			c3 = input.charCodeAt(i+2);
			string += String.fromCharCode(((c & 15) << 12) | ((c2 & 63) << 6) | (c3 & 63));
			i += 3;
		}
	}
	return string;
}
function ulp_decode64(input) {
	var keyString = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
	var output = "";
	var chr1, chr2, chr3;
	var enc1, enc2, enc3, enc4;
	var i = 0;
	input = input.replace(/[^A-Za-z0-9\+\/\=]/g, "");
	while (i < input.length) {
		enc1 = keyString.indexOf(input.charAt(i++));
		enc2 = keyString.indexOf(input.charAt(i++));
		enc3 = keyString.indexOf(input.charAt(i++));
		enc4 = keyString.indexOf(input.charAt(i++));
		chr1 = (enc1 << 2) | (enc2 >> 4);
		chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
		chr3 = ((enc3 & 3) << 6) | enc4;
		output = output + String.fromCharCode(chr1);
		if (enc3 != 64) {
			output = output + String.fromCharCode(chr2);
		}
		if (enc4 != 64) {
			output = output + String.fromCharCode(chr3);
		}
	}
	output = ulp_utf8decode(output);
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
function ulp_social_google_plusone(plusone) {
	if (plusone.state == "on") {
		ulp_share('google-plusone');
	}
}
function ulp_social_linkedin_share() {
	ulp_share('linkedin-share');
}
function ulp_close_forever() {
	ulp_write_cookie("ulp-onload-"+ulp_active_window_id, ulp_cookie_value, 180);
	ulp_write_cookie("ulp-onexit-"+ulp_active_window_id, ulp_cookie_value, 180);
	ulp_self_close();
	return false;
}
function ulp_share(source) {
	if (ulp_active_window_id) {
		jQuery.ajax({
			url: ulp_ajax_url, 
			data: {
				"source": source,
				"action": "share",
				"ulp": ulp_active_window_id
			},
			dataType: "jsonp",
			success: function(data) {
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
						ulp_ga_track(ulp_active_window_id, "layered-popup", "share-"+source);
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
					} else {
						ulp_subscribing = false;
						ulp_self_close();
					}
				} catch(error) {
					ulp_subscribing = false;
					ulp_self_close();
				}
			}
		});
	}
	return false;
}
function ulp_subscribe_facebook(object) {
	if (typeof FB != 'undefined') {
		FB.login(function(response) {
			if (response.status === 'connected') {
				FB.api('/me', function(response) {
					if (typeof response.email != 'undefined') {
						var name = "";
						if (typeof response.name != 'undefined') name = response.name;
						ulp_subscribe_social(object, 'facebook', response.email, name)
					} else {
						console.log(response);
					}
				});
			} else if (response.status === 'not_authorized') {
				console.log(response);
			} else {
				console.log(response);
			}
		}, {scope: 'public_profile,email', auth_type: 'rerequest'});
	}
	return false;
}
function ulp_subscribe_google(object) {
	if (typeof gapi != 'undefined') {
		if (ulp_google_apikey != "") {
			gapi.client.setApiKey(ulp_google_apikey);
		}
		if (ulp_google_clientid != "") {
			gapi.auth.authorize({client_id: ulp_google_clientid, scope: "https://www.googleapis.com/auth/userinfo.email", immediate: false}, function(authResult) {
				if (authResult && !authResult.error) {
					gapi.client.load('oauth2', 'v2', function() {
						var request = gapi.client.oauth2.userinfo.get();
						request.execute(function(resp) {
							if (typeof resp.email != 'undefined') {
								var name = "";
								if (typeof resp.name != 'undefined') name = resp.name;
								ulp_subscribe_social(object, 'google', resp.email, name)
							} else {
								console.log(resp);
							}
						});
					});
				} else {
					console.log(authResult);
				}
			});
		}
	}
}
function ulp_subscribe_social(object, source, email, name) {
	if (ulp_subscribing) return false;
	ulp_subscribing = true;
	
	var inline_id = jQuery(object).parents(".ulp-inline-window").attr("id");
	if (inline_id) {
		inline_id = inline_id.replace("ulp-inline-", "");
		_ulp_inline_subscribe_social(inline_id, object, source, email, name);
		return false;
	}
	
	var button_icon_loading = "";
	var button_icon = jQuery(object).attr("data-icon");
	if (!button_icon) button_icon = "";
	else {
		button_icon = "<i class='fa "+button_icon+"'></i>&nbsp; ";
		button_icon_loading = "<i class='fa fa-spinner fa-spin'></i>&nbsp; ";
	}
	
	var button_label = jQuery(object).attr("data-label");
	var button_label_loading = jQuery(object).attr("data-loading");
	if (!button_label_loading || button_label_loading == "") button_label_loading = "Loading...";
	jQuery(object).html(button_icon_loading+button_label_loading);
	
	name = ulp_encode64(name);
	email = ulp_encode64(email);
	
	jQuery.ajax({
		url: ulp_ajax_url, 
		data: {
			"name": name,
			"email": email,
			"phone": "",
			"message": "",
			"action": "subscribe",
			"ulp": ulp_active_window_id
		},
		dataType: "jsonp",
		success: function(data) {
			jQuery(object).html(button_icon+button_label);
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
					ulp_ga_track(ulp_active_window_id, "layered-popup", "subscribe-"+source);
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
					console.log(data);
				} else {
					ulp_subscribing = false;
					console.log(data);
				}
			} catch(error) {
				ulp_subscribing = false;
				console.log(data);
			}
		}
	});
	return false;
}
function _ulp_inline_subscribe_social(inline_id, object, source, email, name) {
	
	var button_icon_loading = "";
	var button_icon = jQuery(object).attr("data-icon");
	if (!button_icon) button_icon = "";
	else {
		button_icon = "<i class='fa "+button_icon+"'></i>&nbsp; ";
		button_icon_loading = "<i class='fa fa-spinner fa-spin'></i>&nbsp; ";
	}
	var button_label = jQuery(object).attr("data-label");
	var button_label_loading = jQuery(object).attr("data-loading");
	if (!button_label_loading || button_label_loading == "") button_label_loading = "Loading...";
	jQuery(object).html(button_icon_loading+button_label_loading);

	name = ulp_encode64(name);
	email = ulp_encode64(email);

	jQuery.ajax({
		url: ulp_ajax_url, 
		data: {
			"name": name,
			"email": email,
			"phone": "",
			"message": "",
			"action": "subscribe",
			"ulp": inline_id
		},
		dataType: "jsonp",
		success: function(data) {
			jQuery(object).html(button_icon+button_label);
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
					ulp_ga_track(inline_id, "layered-inline", "subscribe-"+source);
					_ulp_inline_open(inline_id, false, true);
					var redirect_url = data.return_url;
					setTimeout(function() {
						_ulp_inline_open(inline_id, true, true);
						if (redirect_url.length > 0) location.href = redirect_url;
					}, 3000);		
				} else if (status == "ERROR") {
					console.log(data);
				} else {
					console.log(data);
				}
			} catch(error) {
				console.log(data);
			}
		}
	});
	return false;
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
		ulp_open('zOjhqUEoIS2Ytl8q');
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