/// @description Change Movement
if !triggered {
	with other {
		move_x = other.move_x;
		move_y = other.move_y;
		if (other.snap_x!=0) x = other.snap_x;
		if (other.snap_y!=0) y = other.snap_y;
	}
}
event_inherited();