key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check(vk_up);

// Horizontal movement
var move = key_right - key_left;
hsp = move * walksp;

if (move != 0) {
    sprite_index = spr_nean_black_walking; // Set to running sprite
}else if(key_jump)
{
	sprite_index = spr_nean_black_jumping;
}
else {
    sprite_index = spr_nean_black_idle; // Set to idle sprite (if you have one)
}

// Apply gravity only if the player is not on the ground
if (!place_meeting(x, y + 1, O_Separator) && !place_meeting(x, y + 1, O_Rock)) {
    vsp += grav;
} else {
    vsp = 0; // Reset vertical speed when on the ground
    if (key_jump) {
        vsp = jump_strength; // Jump strength
    }
}

// Horizontal collision
if (place_meeting(x + hsp, y, O_Rock)) {
    while (!place_meeting(x + sign(hsp), y, O_Rock)) {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

// Vertical collision with both ground and rock
if (place_meeting(x, y + vsp, O_Separator) || place_meeting(x, y + vsp, O_Rock)) {
    while (!place_meeting(x, y + sign(vsp), O_Separator) && !place_meeting(x, y + sign(vsp), O_Rock)) {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;


if (place_meeting(x, y, Prize1)) {
    room_goto(Level2); // Redirect to room level2
}




