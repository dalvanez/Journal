/// @description Transition
play_sound(snd_flick);
audio_play_sound(snd_hum,80,true);
if (!global.endless) room_goto(rm_intro);
else				 room_goto(rm_endless);