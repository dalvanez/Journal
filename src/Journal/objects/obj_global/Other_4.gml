/// @description Initiate Hum
play_sound(snd_flick);
if (!audio_is_playing(snd_hum)) audio_play_sound(snd_hum,80,true);

switch(room) {
	case rm_endless:
		if global.endless {
			if (array_length_1d(global.endless_words)<=2) {
				load_screen = true;
				alarm[11] = 1;
				alarm[2]  = 4;
			} else {
				load_screen = false;
			}
		} else {
			room_goto(rm_intro);
		}
		break;
	default:
		load_screen = false;
		break;
}