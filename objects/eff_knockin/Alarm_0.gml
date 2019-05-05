/// @desc TRIGGER

event_inherited()

for(var i=0 ; i < ds_list_size(people_hit) ; i++)
{
	var m = ds_list_find_value(people_hit, i)
	var s_knock = point_direction(m.x, m.y, x, y)
	knockback_direction = s_knock
	with m
	{
		move(other.knockback_speed, other.knockback_direction)	
	}
}