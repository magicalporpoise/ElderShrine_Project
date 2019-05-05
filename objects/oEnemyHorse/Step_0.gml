/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// switch and base action off state
if current_state == ai_wander
{
	if instance_exists(oPlayerCharacter)
	{
		var play = instance_nearest(x, y, oPlayerCharacter)
		if point_distance(x, y, play.x, play.y) < player_aggro
		{
			current_state = ai_aggro
			ability_target = [play.x, play.y]
		}
		else if point_distance(x, y, play.x, play.y) < player_see
		{
			current_state = ai_follow
			ability_target = [play.x, play.y]
		}
	}
	else current_state = ai_wander
}

switch(current_state)
{
	case ai_wander:
		sprite_index = sHorse_idle
		//if alarm_get(0) < 0 then alarm_set(0, 100)
		//move_angle += wander_rotate
		//move(agility * move_speed, move_angle)
		break
		
	case ai_aggro:
		sprite_index = sHorse_run
		current_attack = main_attack
		move(agility * move_speed, direction)
		if alarm_get(0) < 0 then alarm_set(0, 40)
		break
		
	case ai_follow:
		if not audio_is_playing(soundHorseGallop) then audio_play_sound(soundHorseGallop, 4, false)
		sprite_index = sHorse_run
		if alarm_get(1) < 0 then alarm_set(1, 60)
		if alarm_get(0) < 0 then alarm_set(0, 60)
		var s = alarm_get(1)
		if s mod 10 == 0
		{
			if instance_exists(oPlayerCharacter)
			{
				var play = instance_nearest(x, y, oPlayerCharacter)
				direction = point_direction(x, y, play.x, play.y)
				move_angle = direction + random_range(60, 90)//90*(((s div 10) mod 2)*-1)
			}
		}
		move(agility * move_speed, move_angle)
		break
		
	case ai_ability:
		current_state = ai_wander
		break
}


// direction

if ((move_angle < 90 or move_angle > 270) and image_xscale > 0)	or ((move_angle > 90 and move_angle < 270) and image_xscale < 0)
{
	image_xscale = -image_xscale
}