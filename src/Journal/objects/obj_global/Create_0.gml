/// @description Initialize Game
#macro fnt_kenney font_add_sprite_ext(spr_font," !\"#$%'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~",false,0)
#macro save_file "save.ini"
#macro c_bit_gray $8c8c8c
#macro c_bit_dgray $252525
#macro c_bit_black $090909
#macro c_bit_white $ffffff

//Load Audio
audio_group_load(keys);
audio_group_load(fx);
audio_group_load(ambient);

//Difficulty Scaling
global.difficulty_modifier = 0;	//Intro should modify this, so the actual game is challenging but still completable

//Endless Mode
load_screen = true;		//Whether or not to display the load screen.
ini_open(save_file);
if (ini_read_real("settings","fullscreen",true)) event_perform(ev_keypress,vk_f11);
global.endless = ini_read_real("game","endless",false);
ini_close();
global.endless_words[0] = "I'm sorry.";

alarm[1] = 60;