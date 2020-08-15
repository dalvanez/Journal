/// @description Dev Skip
if os_get_config()=="dev" && !freeze_inputs {
	complete_phrase();
}