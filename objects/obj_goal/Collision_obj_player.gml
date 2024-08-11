obj_global_values_manager.current_player_state = other.next_player_state; 
var _current_player = obj_global_values_manager.player_selected;
var _current_level = obj_global_values_manager.current_level;

	switch (_current_level)
	{
		case "level1":
			obj_global_values_manager.current_level = "level2";
			update_state_player(_current_level, _current_player);
		break;
		
		case "level2":
			obj_global_values_manager.current_level = "level3";
			update_state_player(_current_level, _current_player);
		break;
		
		case "level3":
			obj_global_values_manager.current_level = "level4";
			update_state_player(_current_level, _current_player);
		break;
		
	}
room_goto(other.next_player_room);