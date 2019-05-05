/// if activated, do it
event_inherited()
if activated
{
	var atk = instance_create_layer(my_attacker.x, my_attacker.y, "Instances", oProjectile)
	set_attack_alliance(my_attacker, atk)
	with atk
	{
		ds_list_add(my_attack, eff_eggpop)
		
		proj_dir = my_attacker.attack_dir
		proj_spd += my_attacker.movement_moved div 2
		image_blend = c_yellow
		sprite_index = sRedBurst
		//show_debug_message(string(other.movement_moved))
		audio_play_sound(soundCast3, 4, false)
	}	
	
	//deactivate
	activated = false
}
