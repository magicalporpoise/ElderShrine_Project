/// @description Insert description here
// You can write your code in this editor
var num_proj = 5
var angle_div = 360 / num_proj
for (var i = 0 ; i < num_proj ; i++)
{
	var atk = instance_create_layer(x, y, "Instances", oSineProjectile)
	set_attack_alliance(my_attacker, atk)
	with atk
	{
		// change attack info
		ds_list_clear(my_attack)
		ds_list_add(my_attack, atk_phys_weak)
			
		// adjust direction
		proj_dir = my_attacker.attack_dir + (i * angle_div)
		image_blend = other.image_blend
	}		
}

instance_destroy(self)