/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if not dead
{
	// get movement input + move
	movement_input(effective_agility*4)
	movement_moved = point_distance(xprevious, yprevious, x, y)
	
	// direction
	if (xprevious != x or yprevious != y)
	{
		direction = point_direction(xprevious, yprevious, x, y)
		//attack_dir = point_direction(x, y, mouse_x, mouse_y)
		//flip sprite
		if direction < 90 or direction > 270 then image_xscale = -1
		else if direction > 90 or direction > 270 then image_xscale = 1
	}
	
	// set attack direction
	attack_dir = point_direction(x, y, mouse_x, mouse_y)
	
	// attacking or using abilities
	if all_offcd
	{
		// are all attack off cd?
		// SPACE ATTACK
		if third_offcd
		{
			//third_attack.image_blend = c_white
			if keyboard_check_pressed(vk_space)
			{
				// dodge ROLL
				current_attack = -12
				dodge_direction = direction
				alarm_set(3, 8)
				third_offcd = false
				sprite_index = sPlayer_dodge
				var charge = instance_create_layer(x, y, "Instances", eff_knockback_select)
				with charge
				{
					my_attacker = other
					knockback_direction = other.dodge_direction
					knockback_speed = other.effective_agility * 16
					deal_effect(other, self, other)
				}
				//deal_effect(self, charge, self)
			}
		}
		// M1 ATTACK
		if main_offcd
		{
			main_attack.image_blend = c_white
			if mouse_check_button(mb_left)
			{
				current_attack = ds_list_find_value(my_attacks, 0)
				main_attack.activated = true
				sprite_index = sPlayer_attack
				//alarm_set(0, main_attack.windup)
				// set cooldown for ability usage and all usage
				//all_offcd = false
				main_offcd = false
				alarm_set(1, main_attack.windup + main_attack.cooldown)
				main_attack.image_blend = c_black
			}
		} 
		// M2 ATTACK
		if second_offcd
		{
			second_attack.image_blend = c_white
			if mouse_check_button(mb_right)
			{
				current_attack = ds_list_find_value(my_attacks, 1)
				second_attack.activated = true
				sprite_index = sPlayer_attack
				//alarm_set(0, second_attack.windup)
				// set cooldown for ability usage and all usage
				//all_offcd = false
				second_offcd = false
				alarm_set(2, second_attack.windup + second_attack.cooldown)
				second_attack.image_blend = c_black
			}
		}
	}
	else
	{
		main_attack.image_blend = c_black
		second_attack.image_blend = c_black
		third_attack.image_blend = c_black
	}
	
}

// reset idle
if sprite_index == sPlayer_attack and image_index >= sprite_get_number(sPlayer_attack) -2
{
	sprite_index = sPlayer_idle
}


// pick up corpses
if place_meeting(x, y, oCorpse)
{
	var pickup = instance_place_list2(x, y, oCorpse)
	for(var i = 0 ; i < ds_list_size(pickup) ; i++)
	{
		var extract = ds_list_find_value(pickup, i)
		ds_list_add(corpses_collected, extract)
		//make invisible
		with extract
		{
			// get them outa here
			x += room_width *10
			// make them invisible TOO
			visible = false	
		}
		
		if extract.sprite_index == sBleed then restore(self, true, 5)
		else if extract.sprite_index == sInsanity then restore(self, false, 5)
		
		audio_play_sound(soundPickup, 5, false)
	}
}

//

// ***GOD MODE

//
//hit_points = hit_points_max
//wit_points = 0