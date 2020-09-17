function player_typing() {
	//player_typing()
	//Manage the player's ability to type.
	if (!freeze_inputs) {
		var _char = string_upper(keyboard_lastchar);
		var _phrase_char = string_copy(phrase,player_index,1);
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
			complete_phrase();
		}
	}


}
