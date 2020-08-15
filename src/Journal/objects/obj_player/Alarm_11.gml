/// @description Restart
switch(room) {
	case rm_intro:
		room_goto(rm_story);
		break;
	case rm_story:
		switch(lose_counter) {
			case 0:
				play_sound(snd_step1);
				alarm[11] = 60;
				break;
			case 1:
				play_sound(snd_step3);
				alarm[11] = 50;
				break;
			case 2:
				play_sound(snd_step4);
				play_sound(snd_scary1);
				alarm[11] = 40;
				break;
			case 3:
				play_sound(snd_step2);
				play_sound(snd_scary3);
				alarm[11] = 90;
				break;
			default:
				game_restart();
				break;
		}
		lose_counter+=1;
		break;
}