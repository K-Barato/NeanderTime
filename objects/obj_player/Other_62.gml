/// @description Insert description here
// You can write your code in this editor
var _current_player = obj_global_values_manager.player_selected;
var _enemy_level = obj_global_values_manager.enemy_level;
var _state_async_enemy_level = ".";

if (ds_map_exists(async_load, "id")) { 
    if (ds_map_exists(async_load, "result")) {
        var _response = async_load[? "result"]; 
        var _data = json_decode(_response);
        if (ds_map_exists(_data, "documents")) {
            var _documents = _data[? "documents"];
            
            if (ds_list_size(_documents) > 0) {
                var _first_document = ds_list_find_value(_documents, 0);
                
                var _fields = _first_document[? "fields"];
				var _enemy_level_state = "";
				
				switch (_enemy_level){
					case "level1":
						if(_current_player = "player_1"){
							_enemy_level_state = _fields[? "p2_level1"][? "booleanValue"];
						}else{
							_enemy_level_state = _fields[? "p1_level1"][? "booleanValue"];
						}
					break;
					case "level2":
						if(_current_player = "player_1"){
							_enemy_level_state = _fields[? "p2_level2"][? "booleanValue"];
						}else{
							_enemy_level_state = _fields[? "p1_level2"][? "booleanValue"];
						}
					break;
					case "level3":
						if(_current_player = "player_1"){
							_enemy_level_state = _fields[? "p2_level3"][? "booleanValue"];
						}else{
							_enemy_level_state = _fields[? "p1_level3"][? "booleanValue"];
						}
					break;
				}
				 
                
				_state_async_enemy_level = string(_enemy_level_state);
				if(_state_async_enemy_level == "1"){
					show_debug_message("Entre aqui");
					x = 81;
					y = 144;
					switch(_enemy_level){
						case "level1":
							obj_global_values_manager.enemy_level = "level2";
						break;
						case "level2":
							obj_global_values_manager.enemy_level = "level3";
						break;
						case "level3":
							obj_global_values_manager.enemy_level = "level4";
						break;
					}
				}
				
            }
        } 
    } 
}

