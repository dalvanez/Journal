/// @description Change rooms
room_goto(next_room);
if (room==rm_story) global.difficulty_modifier=other.difficulty-1;

// Inherit the parent event
event_inherited();