var _random_y = random_range(-20,20);
instance_create_layer(x,y+_random_y,"Enemies",obj_pterodactile);
alarm[0] = random_range(180,300);