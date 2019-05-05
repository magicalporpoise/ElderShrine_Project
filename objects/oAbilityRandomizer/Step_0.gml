
if character_creation
{
	creation_index = (creation_index + 1) mod ds_list_size(ability_master_list)
	if ma == noone or sa == noone
	{
		if keyboard_check_pressed(vk_space) or mouse_check_button_pressed(mb_left)
		{
			var abil = ds_list_find_value(ability_master_list, creation_index)
			if ma == noone then ma = abil
			else sa = abil
			audio_play_sound(soundCast0, 10, false)
			// Make some visual effect of the one chosen
			var sprite = object_get_sprite(abil)
			var visual = instance_create_layer(x, y, "Foreground", oDamageVisual)
			with visual
			{
				sprite_index = sprite	
				direction = 0
				move_speed = 20
				image_blend = c_white
				image_xscale = 0.8
				image_yscale = 0.8
				depth = -5*y
			}
		}
	}
	else 
	{
		mainplayer = instance_create_layer(x, y, "Instances", oPlayerCharacter)
		with mainplayer
		{
			main_attack = instance_create_layer(x, y, "Instances", other.ma)
			second_attack = instance_create_layer(x, y, "Instances", other.sa)
			// add to list
			ds_list_add(my_attacks, main_attack)
			ds_list_add(my_attacks, second_attack)
			// set alliance
			with main_attack
			{
				my_attacker = other	
				visible = false
			}
			with second_attack
			{
				my_attacker = other	
				visible = false
			}
		}
		character_creation = false
		set_up_level()
	}
}
else
{
	//move camera
	if instance_exists(mainplayer)
	{
	camera_adjust_pos(view_camera[0], mainplayer, 30, 200)
	}
	
	// play new music once old is done
	if not audio_is_playing(musicBattle) and not audio_is_playing(musicBattleLoop)
	{
		audio_play_sound(musicBattleLoop, 20, true)
	}
}