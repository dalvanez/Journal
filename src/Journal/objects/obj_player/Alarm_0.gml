/// @description Player Typing
if (!freeze_inputs) {
	var _char = string_upper(keyboard_lastchar);
	var _phrase_char = string_copy(phrase,player_index,1);
	cout(_phrase_char);
	if (_char==_phrase_char) {	//Check to see if the current key is correct
		progress = progress+_char;
		player_index+=1;
		if	(!ai_start && enable_count>=ai_enable_on) {
			ai_start = true;
			alarm[1] = wpm+120;
		}
	} else {										//Avoid the use of backspaces?
		keyboard_lastchar = "";
		_char = "";
	}

	keyboard_string = "";
	keyboard_lastchar = "";

	if (string_upper(phrase)==string_upper(progress)) {		//Phrase completion
		freeze_inputs = true;
		enable_count+=1;
		alarm[4] = 15;
		alarm[0] = -1;
		image_yscale = 1.6;
		image_xscale = 0.8;
	}
}