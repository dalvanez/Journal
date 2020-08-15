/// @description Draw Falling Letter
draw_set_color(c_white);
draw_set_font(fnt_kenney);
draw_set_alpha(image_alpha);
draw_text_ext_transformed(x,y,char,0,256,scale,scale,image_angle);
draw_set_alpha(1);