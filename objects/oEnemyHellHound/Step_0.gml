/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// switch and base action off state
if not dead
{		
	var play = noone
	if instance_exists(oPlayerCharacter)
	{
		play = instance_nearest(x, y, oPlayerCharacter)
		//if play.hit_points - play.wit_points < (play.hit_points_max div 4) then current_state = ai_ability
		if point_distance(x, y, play.x, play.y) < player_aggro
		{
			current_state = ai_aggro
			ability_target = [play.x, play.y]
		}
	}
	else current_state = ai_wander

	switch(current_state)
	{
		case ai_wander:
			if alarm_get(0) < 0 then alarm_set(0, random_range(6, 8))
			if decision_move then move(agility * move_speed, move_angle)
			if play != noone
			{
				if point_distance(x, y, play.x, play.y) < player_see
				{
					current_state = ai_follow
				}
			}
			break
			
		case ai_follow:
			//move_angle += wander_rotate
			if alarm_get(0) < 0
			{
				alarm_set(0, random_range(8, 10))
				var play = instance_nearest(x, y, oPlayerCharacter)
				move_angle = point_direction(play.x, play.y, x, y)
			}
			move(agility * move_speed, move_angle)
			break
		
		case ai_aggro:
			current_attack = 1
			if instance_exists(oPlayerCharacter)
			{
				var play = instance_nearest(x, y, oPlayerCharacter)
				var dist = point_distance(x, y, play.x, play.y)
				if dist < sprite_width
				{
					move_angle = point_direction(x, y, play.x, play.y)
					if alarm_get(1) < 0 then alarm_set(1, 5)
				}
				else
				{
					if alarm_get(0) < 0 then alarm_set(0, 10)
				}
				move(agility * move_speed, move_angle)
			}
			break
		
		case ai_ability:
			current_attack = 2
			if alarm_get(1) < 0 then alarm_set(1, 30)
			if alarm_get(0) < 0 then alarm_set(0, random_range(15, 20))
			break
	}
	
	// sprite conditions
	if sprite_index != sWolf_jump
	{
		if xprevious != x or yprevious != y
		{
			sprite_index = sWolf_run
		}
		else sprite_index = sWolf_idle
	}
	else
	{
		if image_index == sprite_get_number(sWolf_jump)-1
		{
			sprite_index = sWolf_idle
		}
	}
}

// direction
//if (xprevious != x or yprevious != y)
//{
	//image_angle = point_direction(xprevious, yprevious, x, y)
	//attack_dir = point_direction(x, y, mouse_x, mouse_y)
//}