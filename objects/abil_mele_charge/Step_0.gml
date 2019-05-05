/// if activated, do it
event_inherited()

if activated and alarm_get(0) < 0
{
	//deactivate
	activated = false
	alarm_set(0, charge_dur)
	charge_dir = my_attacker.attack_dir
	
	attack_tracker = instance_create_layer(my_attacker.x, my_attacker.y, "Instances", oAttackApplier)
	set_attack_alliance(my_attacker, attack_tracker)
	with attack_tracker
	{
		// add attacks to apply
		// change attack info
		ds_list_clear(my_attack)
		ds_list_add(my_attack, atk_phys_strong)
		ds_list_add(my_attack, eff_knockback)
		
		// change size
		image_xscale = 3
		image_yscale = 1
		image_blend = c_orange
		
		// adjust durations
		duration = other.charge_dur
		cooldown = 30
		image_angle = other.charge_dir
	}
	audio_play_sound(soundCast4, 4, false)
}

// CHARGGE
//show_debug_message(string(alarm_get(0)))
if alarm_get(0) > 0
{
	if instance_exists(my_attacker)
	{
		with my_attacker
		{
			move(other.charge_speed, other.charge_dir)
		}
	
		with attack_tracker
		{
			x = my_attacker.x
			y = my_attacker.y
		}
	}
}
