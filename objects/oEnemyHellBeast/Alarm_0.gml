/// flip rotate

if current_state == ai_wander
{
	move_angle = random(360)
}
else if current_state == ai_follow
{
	if instance_exists(oPlayerCharacter)
	{
		var play = instance_nearest(x, y, oPlayerCharacter)
		move_angle = point_direction(x, y, play.x, play.y) + random_range(-45, 45)
	}
}
else if current_state == ai_aggro 
{
	if instance_exists(oPlayerCharacter)
	{
		var play = instance_nearest(x, y, oPlayerCharacter)
		move_angle = point_direction(x, y, play.x, play.y)+random_range(-90, 90)
	}
}
else if current_state == ai_ability
{
	if instance_exists(oPlayerCharacter)
	{
		var play = instance_nearest(x, y, oPlayerCharacter)
		move_angle = point_direction(x, y, play.x, play.y)+random_range(-90, 120)
	}	
}