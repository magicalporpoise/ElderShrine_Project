/// if activated, do it

event_inherited()

if activated
{
	var atk = instance_create_layer(my_attacker.x, my_attacker.y, "Instances", oImpactGrenade)
	set_attack_alliance(my_attacker, atk)
	with atk
	{
		proj_dir = my_attacker.attack_dir
		proj_spd += my_attacker.movement_moved div 2
		image_blend = c_green
		
		ds_list_clear(my_attack)
		ds_list_add(my_attack, atk_ment_strong)
		//ds_list_add(my_attack, eff_knockin)
		image_blend = c_aqua
		
		
		// change what it spawns
		spawn = oSineBall
	}
	audio_play_sound(soundCast3, 4, false)
	
	//deactivate
	activated = false
}


