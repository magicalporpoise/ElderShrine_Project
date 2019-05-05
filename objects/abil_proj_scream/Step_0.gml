/// if activated, do it
event_inherited()
if activated
{	
	// make cone
	//for (var i = -1 ; i < 2 ; i++)
	//{
		var atk = instance_create_layer(my_attacker.x, my_attacker.y, "Instances", oBoomerang)
		set_attack_alliance(my_attacker, atk)
		with atk
		{
			// change attack info
			ds_list_clear(my_attack)
			//ds_list_add(my_attack, atk_ment_med)
			ds_list_add(my_attack, eff_insanity)
			
			// update angle
			proj_dir = my_attacker.attack_dir //+ 15*i
			//image_blend = c_blue
			image_xscale = 1
			image_yscale = 1
			image_blend = c_aqua
			
			audio_play_sound(soundCast2, 4, false)
		}		
	//}
	
	//deactivate
	activated = false
}
