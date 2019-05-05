/// Handle incoming attack
depth = -y
/// check to see if still alive
if not dead 
{
	if hit_points < wit_points
	{
		dead = true
		
		instance_destroy(self)
	}
}
