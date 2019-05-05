/// @desc TRIGGER
for(var i=0 ; i < ds_list_size(people_hit) ; i++)
{
	var m = ds_list_find_value(people_hit, i)
	with m
	{
		move(other.knockback_speed, other.knockback_direction)	
		
		// create visual
		var visual
		visual = instance_create_layer(x, y, "Background", oFadeVisual)
		with visual
		{
			sprite_index = sdust
			image_angle = other.direction
			opacity = 15*4
			opacity_drop = 15
		}
	}
}