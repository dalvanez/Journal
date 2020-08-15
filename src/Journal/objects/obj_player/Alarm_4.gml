/// @description Get Next Phrase, Move, Etc

var _dist = (string_length(phrase)*16) div 8;	//Get distance travelled based on length of typed phrase
_dist = clamp(_dist,16,48);

//Reset Variables
fetch_next_phrase();

//Increase diffuculty increment depending on the room
switch(room) {
	case rm_story:
		if (enable_count>=21) difficulty_increase = 5;
		if (enable_count>=45) difficulty_increase = 10;
		if (enable_count>=60) difficulty_increase = 20;
		break;
	default:
		break;
}

//Move Player Up;
play_sound(choose(snd_step1,snd_step2,snd_step3,snd_step4,snd_step5,snd_step6));
if (move_y==0) y-=_dist;
else y+=move_y;
x+=move_x;
image_yscale = 1;
image_xscale = 1;

freeze_inputs = false;
alarm[1] = wpm+120;