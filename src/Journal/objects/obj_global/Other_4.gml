/// @description Initiate Hum
play_sound(snd_flick);
if (!audio_is_playing(snd_hum)) audio_play_sound(snd_hum,80,true);