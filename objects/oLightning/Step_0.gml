/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// modify path and speed by random amounts
if random(10) > 6
{
	// change dir
	var vary = 45
	proj_dir += irandom_range(-vary, vary)
	
	// change spd
	vary = 1
	proj_spd += random_range(-vary, vary)
}

