/// @description Play Sound and Start Keyboard check
play_sound(choose(snd_key0,snd_key1,snd_key2,snd_key3,snd_key4,snd_key5,snd_key6,snd_key7));

player_typing();

if (string_length(phrase)>0 && string_length(progress)>0 && string_count(progress,phrase)<1) {
	progress = "";
	keyboard_lastchar = "";
	keyboard_string = "";
}

if  (!freeze_inputs) alarm[0] = 1;
else  {
	progress = "";
	keyboard_lastchar = "";
	keyboard_string = "";
}