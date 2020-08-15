/// @description Init
story = ds_queue_create();
queue_phrases(story);

//Typing Variables
phrase = string_upper(ds_queue_dequeue(story));		//Current phrase to type
progress = "";										//Progress towards finishing the current phrase
player_index = 1;									//The current index the player is on
freeze_inputs = false;								//Whether or not to freeze the player inputs or not

//AI Variables
difficulty = 0;				//How many letters per second
wpm = 60/difficulty;		//Adjust so it sets the alarm for the correct time
ai_index = 0;				//How far into the phrase the AI is
ai_phrase = "";				//The string to compare to the player's progress
ai_start = false;			//Whether the AI has started or not.
lose = false;				//Whether or not the player has lost to the AI
lose_counter = 0;			//Which phase of the losing animation we're in
enable_count = 0;			//How many phrases have been completed, used to track when to start being evil

//Graphics
scale = 2;					//Text Scale
light_w = 16;				//Light Width
light_h = 16;				//Light Height
blink = 1;					//Blinking Draw variable
blink_speed = 30;			//Speed of cursor blinking
surface = noone;			//Dark Circle Effect
dark_radius = 3;			//Dark Radius
text_y = (display_get_gui_height()/2)-(64*scale)-128;	//Text Y position

//alarm[1] = wpm+120;				//Wait to start AI
alarm[2] = blink_speed;			//Blinking Cursor
alarm[3] = choose(3,1,2,4,7,1,8,2,4);	//Light Flickering