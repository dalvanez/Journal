/// @description Manage Flicker
flicker_w+=choose(2,1,4,3,-2,4,-3,5);
flicker_h+=choose(2,1,4,3,-2,4,-3,5);
flicker_w = clamp(flicker_w,12,24);
flicker_h = clamp(flicker_h,24,80);
alarm[0] = choose(5,15,4,8,3,4,4,2,3);