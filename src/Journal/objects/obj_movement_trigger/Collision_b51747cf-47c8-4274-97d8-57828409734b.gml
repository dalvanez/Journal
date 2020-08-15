/// @description Change Movement
if !triggered {
	with other {
		move_x = other.move_x;
		move_y = other.move_y;
		x = other.snap_x;
		y = other.snap_y;
	}
}
event_inherited();