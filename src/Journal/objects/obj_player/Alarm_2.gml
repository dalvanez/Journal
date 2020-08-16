/// @description Cursor Blink
blink+=1;
if (blink>10) blink = 1;
else if (blink>9 && enable_count<1 && room==rm_intro) type_hint = true;
alarm[2] = blink_speed;