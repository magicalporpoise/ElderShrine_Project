/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// create an explosion when destroyed
if spawn != noone
{
	if instance_exists(my_attacker)
	{
		audio_play_sound(soundExplosionsmall, 6, false)
		var explode = instance_create_layer(x, y, "Instances", spawn)
		set_attack_alliance(my_attacker, explode)
		with explode
		{
			sprite_index = other.sprite_index
			image_xscale = 1
			image_yscale = 1
			image_blend = other.image_blend	
		}
	}
}