event_inherited();

var _wall_found = check_enemy_collision(sign(vel_x) * check_x_collision, 0);

if (_wall_found)
{
	vel_x = -vel_x;
}