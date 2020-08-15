/// @description Init
story = ds_queue_create();
queue_phrases(story);

//Typing Variables
phrase = string_upper(ds_queue_dequeue(story));		//Current phrase to type
progress = "";										//Progress towards finishing the current phrase
freeze_inputs = false;								//Whether or not to freeze the player inputs or not

//AI Variables
difficulty = 1;				//How many letters per second
wpm = 60/difficulty;		//Adjust so it sets the alarm for the correct time
ai_index = 0;				//How far into the phrase the AI is
ai_phrase = "";				//The string to compare to the player's progress

//Graphics
scale = 2;					//Text Scale
light_w = 16;				//Light Width
light_h = 16;				//Light Height
blink = 0;					//Blinking Draw variable
blink_speed = 30;			//Speed of cursor blinking
surface = noone;			//Dark Circle Effect
dark_radius = 3;			//Dark Radius

//alarm[1] = wpm+120;				//Wait to start AI
alarm[2] = blink_speed;			//Blinking Cursor
alarm[3] = choose(3,1,2,4,7,1,8,2,4);	//Light Flickering