/// ATTACK

if current_attack == main_attack
{
	if instance_exists(oPlayerCharacter)
	{
		var play = instance_nearest(x, y, oPlayerCharacter)
		direction = point_direction(x, y, play.x, play.y)
		main_attack.activated = true
	}
}

attack_player = false