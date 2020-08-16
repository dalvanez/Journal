/// @description Cleanup
ini_open("save.ini");
ini_write_real("settings","fullscreen",window_get_fullscreen());
ini_write_real("game","endless",global.endless);
ini_close();

/*font_delete(fnt_kenney);
audio_group_unload(keys);
audio_group_unload(fx);
audio_group_unload(ambient);