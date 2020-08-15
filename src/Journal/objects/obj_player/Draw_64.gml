/// @description Draw Darkness
//Draw Surface Circle, with help from https://forum.yoyogames.com/index.php?threads/solved-draw-circles-outline-with-a-thick-outline.29342/
if (!surface_exists(surface)) {
	surface = surface_create(1280,720);
	surface_set_target(surface);
	draw_clear_alpha(c_black,0.8);
	draw_rectangle_color(0,0,1280,720,c_black,c_black,c_black,c_black,false);
	gpu_set_blendmode(bm_subtract);
	draw_circle_color(1280/2,720/2,dark_radius*64,c_white,c_white,false);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
}

draw_surface(surface, 0, 0);

//Draw AI Progress
draw_set_color(c_black);
var _phrase_length = string_length(phrase);
if (ai_index>0 && _phrase_length>0) draw_rectangle(0,0,1280*(ai_index/_phrase_length),720*(ai_index/_phrase_length),false);

//Draw Text on Screen
draw_set_font(fnt_kenney);
draw_set_color(c_bit_gray);
var _w = display_get_gui_width()/2;
var _h = display_get_gui_height()/2;
var _x = _w-(string_width(phrase)/2)*scale;
var _y = _h-(64*scale)-128;

draw_text_transformed(_x,_y,phrase,scale,scale,0);

draw_set_color(c_bit_white);
draw_text_transformed(_x,_y,progress,scale,scale,0);
//draw_text_transformed(0,0,keyboard_string,scale,scale,0); //Debug
if (blink%2==0) draw_text_transformed(_x+(string_length(progress)*16*scale)-2,_y,"|",scale/2,scale,0);