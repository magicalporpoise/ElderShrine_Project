/// @description TRIGGER
if not instance_exists(my_attacker) then exit
// for each person on people hit, 
for(var i=0 ; i < ds_list_size(people_hit) ; i++)
{
	var living = ds_list_find_value(people_hit, i)
	// if they're still alive, deal it out
	if instance_exists(living)
	{
		show_debug_message("      Character " + string(living.id) +": Eff with " + string(id))
		handle_effect(self, living)
	}
	else
	{
		// if the target dies,
		// launch projectiles in random spot
		// from place where they were???....
			// make many in a circle
		var num_proj = 2
		var angle_div = 360 / num_proj
		for (var i = 0 ; i < num_proj ; i++)
		{
			var atk = instance_create_layer(my_attacker.x, my_attacker.y, "Instances", oProjectile)
			set_attack_alliance(my_attacker, atk)
			with atk
			{
				// change attack info
				ds_list_clear(my_attack)
				ds_list_add(my_attack, atk_phys_weak)
				//ds_list_add(my_attack, eff_eggpop)
			
				// adjust direction
				proj_dir = my_attacker.attack_dir + random_range(-45, 45)
				image_yscale = 0.25
				image_blend = c_orange
				sprite_index = sRedBurst
				// change cooldowns
				reload_at = 0
			}		
		}
		// getem outa here and adjust i
		ds_list_delete(people_hit, i)
		i--	
	}
}