/// @description Draw Police Lights
draw_set_alpha(.4);
draw_set_color(color);
draw_ellipse(x-(flicker_w/2),y,x+(flicker_w/2),y-(flicker_h),false);
draw_set_alpha(1);