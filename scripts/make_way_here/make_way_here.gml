/// make_way_here(x, y)
var xx = argument0
var yy = argument1



// move other deathable objects
var ped = instance_place_list2(xx, yy, oDeathable)
if ped != noone
{
	for(var i = 0 ; i < ds_list_size(ped) ; i++)
	{
		var guy = ds_list_find_value(ped, i)
		if guy.id == self.id then continue
		var push_dir = point_direction(xx, yy, guy.x, guy.y)
		push_dir = ncd(push_dir)
		var push_spd = 1
		with guy
		{
			move(push_spd, push_dir)	
		}
	}
	ds_list_destroy(ped)
}