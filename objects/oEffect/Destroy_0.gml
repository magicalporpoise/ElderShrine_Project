/// destroy lists

ds_list_destroy(damage_effects)

for(var i = 0 ; i < ds_list_size(people_hit) ; i++)
{
	var p = ds_list_find_value(people_hit, i)
	if instance_exists(p)
	{
		var e = ds_list_find_index(p.incoming_effects, self)
		if e != -1 then ds_list_delete(p.incoming_effects, e)
	}
}
ds_list_destroy(people_hit)

event_inherited()