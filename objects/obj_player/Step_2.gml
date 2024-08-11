// This runs the parent's End Step event, 
// which handles flipping the character's sprite left or right.
event_inherited();
// This is a switch statement that runs on the 'sprite_index' variable, 
// which stores the sprite currently assigned to the instance,
// this allows us to transition to some other sprite, 
// depending on the currently assigned sprite, and some additional conditions.
switch (sprite_index)
{
	// Code under this case runs if the assigned sprite is 'spr_player_walk', 
	// meaning the player is walking.
	case spr_player_walk:
	
		image_speed = 1;
	
		// This checks if the X velocity is 0, 
		// meaning the player is not moving horizontally.
		if (vel_x == 0)
		{
			// In that case we change its sprite to the idle one.
			sprite_index = spr_player_idle;
		}
		
		if (!grounded)
		{
			sprite_index = spr_player_jump;
		}
		break;

	// Code under this case runs if the assigned sprite is 'spr_player_jump', 
	// meaning the player was in the middle of a jump.
	case spr_player_jump:
	
		if (vel_y >= 0)
		{
			sprite_index = spr_player_fall;
			image_index = 0;
			image_speed = 1;
		}
		break;

	case spr_player_fall:
		if (grounded)
		{
			sprite_index = spr_player_idle;
			image_speed = 1;
		}
		break;


	default:
	
		image_speed = 1;
		break;
}