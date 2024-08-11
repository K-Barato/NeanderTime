function check_enemy_collision(_move_x, _move_y) 
{
	return place_meeting(x + _move_x, y + _move_y, enemies_block);
}