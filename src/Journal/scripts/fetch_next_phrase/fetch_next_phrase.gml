//fetch_next_phrase
//Fetches the next phrase from the queue. Also resets variables.
keyboard_string = "";
keyboard_lastchar = "";
ai_phrase = "";
ai_index = 0;
player_index = 1;
progress = "";
difficulty+=difficulty_increase;
wpm = 60*60/difficulty;
if !(enable_count>=ai_autostart_on) ai_start = false;
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