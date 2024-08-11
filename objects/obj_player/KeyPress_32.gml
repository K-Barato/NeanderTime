if (!has_controll || !grounded)
{
	exit;
}

vel_y = -jump_speed;

sprite_index = spr_player_jump;
image_index = 0;

grounded = false;