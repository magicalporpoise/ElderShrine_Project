/// if activated, do it
event_inherited()
if activated
{
	var atk = instance_create_layer(my_attacker.x, my_attacker.y, "Instances", oAttackApplier)
	attack_tracker = atk
	set_attack_alliance(my_attacker, atk)
	with atk
	{
		// change attack info
		ds_list_clear(my_attack)
		ds_list_add(my_attack, atk_ment_med)
		ds_list_add(my_attack, eff_knockback)
		
		image_xscale = self.image_xscale * 1.5
		image_yscale = self.image_yscale * 1.5
		image_blend = c_red
		image_angle = my_attacker.direction
		duration = 40
	}
	
	//deactivate
	activated = false
	
	audio_play_sound(soundHorseWhinny, 4, false)
}

if attack_tracker != noone
{
	// check if its alive
	if instance_exists(attack_tracker)
	{
		with attack_tracker
		{
			x = my_attacker.x
			y = my_attacker.y
			image_angle = my_attacker.direction
		}
	}
	else attack_tracker = noone
}