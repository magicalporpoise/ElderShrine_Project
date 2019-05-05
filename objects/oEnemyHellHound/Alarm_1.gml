/// ATTACK
if current_attack == 1
{
	var atk = instance_create_layer(x, y, "Instances", oAttackApplier)
	set_attack_alliance(self, atk)
	with atk
	{
		// add to attack
		ds_list_add(my_attack, atk_ment_strong)
		
		// play sound 
		//audio_play_sound(soundExplosion1, 6, false)
		
		// change size
		sprite_index = seff_nebula
		image_xscale = 3
		image_yscale = 3
		image_blend = c_blue
		
		// change timings
		cooldown = 5
		
		// update x and y to mouse x and ywd
		visible = false
	}		
}
else if current_attack == 2
{
	var atk = instance_create_layer(x, y, "Instances", oAttackApplier)
	set_attack_alliance(self, atk)
	with atk
	{
		if instance_exists(oPlayerCharacter)
		{
			var play = instance_nearest(x, y, oPlayerCharacter)
			image_angle = point_distance(x, y, play.x, play.y)
		}
		sprite_index = sSwing
		image_xscale = other.image_xscale
		image_yscale = 1
		image_blend = c_red
		ds_list_clear(my_attack)
		ds_list_add(my_attack, eff_bleed)
		ds_list_add(my_attack, eff_bleed)
	}	
}
attack_player = false