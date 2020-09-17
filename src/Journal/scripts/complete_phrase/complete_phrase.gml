function complete_phrase() {
	//complete_phrase()
	//Completes the phrase and moves on
	freeze_inputs = true;
	enable_count+=1;
	type_hint = false;
	hint_fade = 0;
	if (room==rm_intro && ai_enable_on<=enable_count) global.difficulty_modifier+=.8;
	alarm[4] = 15;
	alarm[0] = -1;
	image_yscale = 1.6;
	image_xscale = 0.8;


}
