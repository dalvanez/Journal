/// @description Light Flicker
light_w+= choose(1,2,1,-1,4,1,2,3,-2,1);
light_h+= choose(1,2,1,-1,4,1,2,3,-2,1);
light_h = clamp(light_h,10,18);
light_w = clamp(light_w,10,18);
alarm[3] = choose(1,4,2,6,1,4,2,3,9);