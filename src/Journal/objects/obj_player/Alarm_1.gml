/// @description AI Typing
ai_phrase = string_copy(phrase,0,ai_index);
ai_index+=1;

if (ai_index>0 && ai_phrase==progress) {
	room_restart();
}

alarm[1] = wpm;