/// @description Draw Text

//Light
draw_set_color(c_bit_black)
var _out = 4;
draw_ellipse(x+light_w*_out-1,y+light_h*_out,x-light_w*_out-1,y-light_h*_out,false)
draw_set_color(c_bit_dgray)
draw_ellipse(x+light_w-1,y+light_h,x-light_w-1,y-light_h,false)

draw_self();