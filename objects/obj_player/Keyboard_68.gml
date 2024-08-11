if (!has_controll || keyboard_check(ord("A")))
{
	exit;
}

vel_x = move_speed;

if (grounded)
{
	sprite_index = spr_player_walk;
}