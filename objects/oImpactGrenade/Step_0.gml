/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// det self if hitting someone
if place_meeting(x, y, oDeathable)
{
	var det = instance_nearest(x, y, oDeathable)
	if det != my_attacker
	{
		event_inherited();
		instance_destroy(self)	
	}
}

