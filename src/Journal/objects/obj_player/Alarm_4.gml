/// @description Get Next Phrase, Move, Etc

var _dist = (string_length(phrase)*16) div 8;	//Get distance travelled based on length of typed phrase
_dist = clamp(_dist,16,48);

//Reset Variables
fetch_next_phrase();

//Move Player Up;
play_sound(choose(snd_step1,snd_step2,snd_step3,snd_step4,snd_step5,snd_step6));
y-=_dist;
image_yscale = 1;
image_xscale = 1;

freeze_inputs = false;