/// @description AI Typing
if (!freeze_inputs && ai_start) {
	ai_phrase = string_copy(phrase,0,ai_index);
	audio_play_sound(choose(snd_scary1,snd_scary2,snd_scary3,snd_scary4,snd_scary5),80,false);
	var _w = display_get_gui_width()/2;
	var _x = _w-(string_width(phrase)/2)*scale;
	with instance_create_layer(_x+((ai_index-1)*16*scale),text_y,"GUI",obj_falling_letter) {
		char = string_copy(other.ai_phrase,other.ai_index,1);
		scale = other.scale;
	}

	if ((ai_index>0 && ai_phrase==progress )|| string_length(progress)<1) {
		lose_game();
	}
	
	ai_index+=1;
	alarm[1] = wpm;
}