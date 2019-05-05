/// if activated, do it
event_inherited()
if activated
{
	// make attack appear
	var atk = instance_create_layer(my_attacker.x, my_attacker.y, "Instances", oAttackApplier)
	set_attack_alliance(my_attacker, atk)
	with atk
	{
		// add to attack
		ds_list_add(my_attack, atk_ment_strong)
		
		// play sound 
		//audio_play_sound(soundExplosion1, 6, false)
		
		// change sprite
		sprite_index = sAOE
		
		// change size
		sprite_index = seff_nebula
		image_xscale = 3
		image_yscale = 3
		image_blend = c_aqua
		
		// change timings
		windup = 0
		cooldown = 0
		
		// update x and y to mouse x and y
		x = mouse_x
		y = mouse_y
		visible = false
	}		
	audio_play_sound(soundCast2, 4, false)
	//deactivate
	activated = false
}
