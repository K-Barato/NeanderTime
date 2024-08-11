if (sprite_index == spr_plant_piranha_shooting)
{
	instance_create_layer(x-30,y-40,"Miscellaneous",obj_watermelon);
	sprite_index = spr_plant_piranha_idle;
	shoot = false;
}