/// @description Insert description here
// You can write your code in this editor

// MAKE MORE HORSES
if image_xscale >= 1
{
	var pony
	var new = 2
	for (var i = 0 ; i < new ; i++)
	{
		// make new pony
		pony = instance_create_layer(x + lengthdir_x(sprite_width div 2, i*(360 div new)), y + lengthdir_y(sprite_height div 2, i*(360 div new)), "Instances", oEnemyHorse)
		with pony
		{
						// change size
			image_xscale = other.image_xscale / 2
			image_yscale = other.image_yscale / 2
			var points = [other.hit_points_max div 2, other.wit_points_max div 2]
			var stats = [other.strength-1, other.intellect-1, other.constitution-1, other.willpower-1, 4, 1]
			set_character_stats(self, points, stats)
		}
	}
}

// Inherit the parent event
event_inherited();

