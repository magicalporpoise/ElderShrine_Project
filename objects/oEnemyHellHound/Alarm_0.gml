/// flip rotate

if current_state == ai_wander
{
	// decide to stay or to move
	var odds = irandom(10)
	if odds > 5
	{
		// decide to move
		decision_move = true
		move_angle = random(360)
	}
	else 
	{
		// decide to stay
		decision_move = false
	}
}
else if current_state == ai_follow then current_state = ai_aggro
else if current_state == ai_aggro
{
	if instance_exists(oPlayerCharacter)
	{
		var play = instance_nearest(x, y, oPlayerCharacter)
		move_angle = point_direction(x, y, play.x, play.y) + random_range(-90, 90)
	}	
	sprite_index = sWolf_jump
}
else if current_state == ai_ability then current_state = ai_wander