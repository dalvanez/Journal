/// @description Load Screen
if (load_screen) {
	if instance_exists(obj_player) with obj_player {
		freeze_inputs = true;
		alarm[11] = 5;
	}
} else {
	if instance_exists(obj_player) with obj_player {
		freeze_inputs = false;
		alarm[11] = -1;
	}
}