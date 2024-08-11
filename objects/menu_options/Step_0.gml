
  /// @description Control Menu

//Item ease in
menu_x += (menu_x_target - menu_x) / menu_speed;

//Keyboard Controls
if (menu_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		menu_cursor++;
		 
		if(menu_cursor >= menu_items)
		{
			menu_cursor = 0;
		}
	}
	
	if (keyboard_check_pressed(vk_down))
	{
		menu_cursor--;
		 
		if(menu_cursor < 0)
		{
			menu_cursor = menu_items - 1;
		}
	}
	
	if (keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width + 200;
		menu_committed = menu_cursor;
		//screen_shake(4, 30);
		//menu_control = false;
	}
}

if (menu_x > gui_width + 150 && menu_committed != -1)
{
	switch (menu_committed)
	{
		case 1:
			obj_global_values_manager.player_selected = "player_1";
			room_goto(Level1);
		break;
		case 0:
			obj_global_values_manager.player_selected = "player_2";
			room_goto(Level1);
		break;
		
	}
}

