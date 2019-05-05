/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// switch and base action off state
if not dead
{
	if move_angle < 90 or move_angle > 270 then image_xscale = -3
	else if move_angle > 90 or move_angle > 270 then image_xscale = 3
		
	if instance_exists(oPlayerCharacter)
	{
		var play = instance_nearest(x, y, oPlayerCharacter)
		if hit_points - wit_points < (hit_points_max div 2) then current_state = ai_ability
		else if point_distance(x, y, play.x, play.y) < player_aggro
		{
			current_state = ai_aggro
			ability_target = [play.x, play.y]
		}
		else if point_distance(x, y, play.x, play.y) < player_see
		{
			current_state = ai_follow
			ability_target = [play.x, play.y]
			//image_angle = point_direction(x, y, play.x, play.y)
		} 
		else current_state = ai_wander
	}
	else current_state = ai_wander

	switch(current_state)
	{
		case ai_wander:
			sprite_index = sHellBeast_idle
			if alarm_get(0) < 0 then alarm_set(0, 8)
			move(agility * move_speed, move_angle)
			break
			
		case ai_follow:
			sprite_index = sHellBeast_idle
			//move_angle += wander_rotate
			if alarm_get(0) < 0 then alarm_set(0, 4)
			move(agility * move_speed, move_angle)
			break
		
		case ai_aggro:
			current_attack = 2
			sprite_index = sHellBeast_flame
			if alarm_get(1) < 0 then alarm_set(1, 8)
			move(agility * move_speed, move_angle)
			break
		
		case ai_ability:
			sprite_index = sHellBeast_roar
			current_attack = 1
			if alarm_get(0) < 0 then alarm_set(0, 6)
			if alarm_get(1) < 0 then alarm_set(1, 5)
			move(agility * move_speed, move_angle)
			break
	}
}

// direction
//if (xprevious != x or yprevious != y)
//{
	//image_angle = point_direction(xprevious, yprevious, x, y)
	//attack_dir = point_direction(x, y, mouse_x, mouse_y)
//}