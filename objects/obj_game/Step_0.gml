///@description Change rooms


// press enter in main menu
if (keyboard_check_pressed(vk_enter))
{
	switch(room)
		{
		case rm_start:
			room_goto(rm_game);
			break;
				//game_restart();
				break;
	}
}