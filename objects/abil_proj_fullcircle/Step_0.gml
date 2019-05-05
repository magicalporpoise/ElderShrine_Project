/// if activated, do it
event_inherited()
if activated
{
	// make many in a circle
	var num_proj = 10
	var angle_div = 360 / num_proj
	for (var i = 0 ; i < num_proj ; i++)
	{
		var atk = instance_create_layer(my_attacker.x, my_attacker.y, "Instances", oProjectile)
		set_attack_alliance(my_attacker, atk)
		with atk
		{
			// change attack info
			ds_list_clear(my_attack)
			ds_list_add(my_attack, atk_ment_weak)
			ds_list_add(my_attack, eff_insanity)
			
			// adjust direction
			proj_dir = my_attacker.attack_dir + (i * angle_div)
			image_yscale = 0.25
			image_blend = c_aqua
			
			// change cooldowns
			reload_at = 0
		}		
	}
	
	audio_play_sound(soundCast1, 4, false)
	
	//deactivate
	activated = false
}
