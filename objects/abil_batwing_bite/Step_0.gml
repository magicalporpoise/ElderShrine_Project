/// if activated, do it
event_inherited()
if activated
{
	var atk = instance_create_layer(my_attacker.x, my_attacker.y, "Instances", oHugeSlam)
	set_attack_alliance(my_attacker, atk)
	with atk
	{
		// change attack info
		ds_list_clear(my_attack)
		ds_list_add(my_attack, atk_phys_med)
		ds_list_add(my_attack, eff_knockin)
		
		image_xscale = self.image_xscale * 1.5
		image_yscale = self.image_yscale * 1.5
		image_blend = c_red
	}
	
	//deactivate
	activated = false
	if object_index == oEnemyGhostBig then audio_play_sound(soundGhostShriek2, 4, false)
	else audio_play_sound(soundGhostShriek1, 4, false)
}
