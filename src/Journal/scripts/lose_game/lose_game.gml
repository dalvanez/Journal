function lose_game() {
	//lose_game()
	//Forces the game to enter a lose state
	freeze_inputs = true;
	play_sound(snd_shut_off);
	if (audio_is_playing(snd_hum)) audio_stop_sound(snd_hum);
	alarm[11]= 120;
	lose = true;


}
