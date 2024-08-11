var _player_to_create = obj_player;

if (obj_global_values_manager.player_selected == "player_1")
{
	_player_to_create = obj_white_nean;
}
if (obj_global_values_manager.player_selected == "player_2")
{
	_player_to_create = obj_black_nean;
}


instance_create_layer(destination_x,destination_y,"Player",_player_to_create);