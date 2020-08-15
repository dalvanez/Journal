/// @description Player Typing
keyboard_lastchar = string_upper(keyboard_lastchar);
var _string = progress;
if (string_count(_string+keyboard_lastchar,phrase)>0) {	//Check to see if the current key is correct
	_string = _string+keyboard_lastchar;
	progress = string_upper(_string);
} else {										//Avoid the use of backspaces?
	keyboard_lastchar = "";
}

keyboard_string = "";

if (string_upper(phrase)==string_upper(progress)) {		//Phrase completion
	freeze_inputs = true;
	alarm[4] = 10;
	alarm[0] = -1;
	image_yscale = 1.6;
	image_xscale = 0.8;
}