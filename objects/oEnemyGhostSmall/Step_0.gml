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
	}
}

switch(current_state)
{
	case ai_wander:
		sprite_index = sGhost_idle
		if alarm_get(0) < 0 then alarm_set(0, 100)
		move_angle += wander_rotate
		move(agility * move_speed, move_angle)
		break
		
	case ai_aggro:
		sprite_index = sGhost_vanish
		if alarm_get(0) < 0 then alarm_set(0, 10)
		break
		
	case ai_ability:
		sprite_index = sGhost_shriek
		if alarm_get(0) < 0 then alarm_set(0, 45)
		move_angle = point_direction(x, y, ability_target[0], ability_target[1])
		move(agility * move_speed * 2, move_angle)
		
		var play = instance_nearest(x, y, oPlayerCharacter)
		var go = false
		if instance_exists(oPlayerCharacter) then go = (point_distance(x, y, play.x, play.y) < player_aggro div 2)
		if current_attack == noone and go
		{
			current_attack = main_attack
			alarm_set(1, 1)
		}
		break
}


// direction
if (xprevious != x or yprevious != y)
{
	//image_angle = point_direction(xprevious, yprevious, x, y)
	//attack_dir = point_direction(x, y, mouse_x, mouse_y)
}