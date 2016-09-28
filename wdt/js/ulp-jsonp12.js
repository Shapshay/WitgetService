var ulp_active_window_id = false;
var ulp_position_margin = 16;
var ulp_ga_tracking;
var ulp_css3_enable = "off";
var ulp_css3_animations_in = ['bounceIn','bounceInUp','bounceInDown','bounceInLeft','bounceInRight','fadeIn','fadeInUp','fadeInDown','fadeInLeft','fadeInRight','flipInX','flipInY','lightSpeedIn','rotateIn','rotateInDownLeft','rotateInDownRight','rotateInUpLeft','rotateInUpRight','rollIn','zoomIn','zoomInUp','zoomInDown','zoomInLeft','zoomInRight'];
var ulp_css3_animations_out = ['bounceOut','bounceOutUp','bounceOutDown','bounceOutLeft','bounceOutRight','fadeOut','fadeOutUp','fadeOutDown','fadeOutLeft','fadeOutRight','flipOutX','flipOutY','lightSpeedOut','rotateOut','rotateOutDownLeft','rotateOutDownRight','rotateOutUpLeft','rotateOutUpRight','rollOut','zoomOut','zoomOutUp','zoomOutDown','zoomOutLeft','zoomOutRight'];

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
	jQuery(document).ready(function() {
		ulp_open('Ge299Rq69coQEOEK');
	});
}
function check_jquery() {
	if (window.jQuery) {
		jquery_loaded();
	} else {
		window.setTimeout(check_jquery, 100);
	}
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
check_jquery();