//fetch_next_phrase
//Fetches the next phrase from the queue. Also resets variables.
keyboard_string = "";
ai_phrase = "";
ai_index = 0;
progress = "";
difficulty+=1;
wpm = 60/difficulty;
var pop = ds_queue_dequeue(story);
switch(typeof(pop)) {
	case "string":
		phrase = string_upper(pop);
		break;
	default:
		cout("[obj_player]: Couldn't pop a string! What's up???");
		break;
}