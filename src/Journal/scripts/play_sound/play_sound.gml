function play_sound(argument0) {
	//play_sound(sound index)
	//Plays a sound as long as it's already not playing
	if (!audio_is_playing(argument0)) audio_play_sound(argument0,50,false);


}
