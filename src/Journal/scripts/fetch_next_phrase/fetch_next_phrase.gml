function fetch_next_phrase() {
	//fetch_next_phrase()
	//Fetches the next phrase from the queue. Also resets variables.

	//Reset the typing and AI variables.
	keyboard_string = "";
	keyboard_lastchar = "";
	ai_phrase = "";
	ai_index = 0;
	player_index = 1;
	progress = "";

	//Increase Difficulty and manage AI Autostart
	difficulty+=difficulty_increase;
	wpm = 3600/difficulty;
	if (difficulty>=3600) difficulty = 3600;
	if !(enable_count>=ai_autostart_on) ai_start = false;

	//Stop any heartbeat warnings.
	if (audio_is_playing(snd_heartbeat)) audio_stop_sound(snd_heartbeat);
	if (audio_is_playing(snd_caution_heartbeat)) audio_stop_sound(snd_caution_heartbeat);

	//Grab the next phrase off of the queue
	endless_queue(story);
	var pop = ds_queue_dequeue(story);
	switch(typeof(pop)) {
		case "string":
			phrase = string_upper(pop);
			break;
		default:
			cout("[obj_player]: Couldn't pop a string! What's up???");
			lose_game();
			break;
	}


}
