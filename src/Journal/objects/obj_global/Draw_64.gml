/// @description Loading Screen
if load_screen {
	draw_set_font(fnt_kenney);
	var _w = display_get_gui_width()/2;
	var _h = display_get_gui_height()/2;
	var _str = "Loading...";
	var scale = 3;
	draw_set_color(c_black);
	draw_rectangle(0,0,1280,720,false);
	draw_set_color(c_bit_white);
	draw_text_transformed(_w-(string_width(_str)/2)*scale,_h,_str,scale,scale,0);
}