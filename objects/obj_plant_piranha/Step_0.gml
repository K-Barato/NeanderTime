if (sprite_index == spr_plant_piranha_shooting)
{
	shoot = true;
}

if (abs(x - obj_player.x) < 60)
{
	sprite_index = spr_plant_piranha_biting;
}
else if (!shoot)
{
	sprite_index = spr_plant_piranha_idle;
}