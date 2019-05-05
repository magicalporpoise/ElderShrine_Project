if not instance_exists(my_attacker) then exit
// for each person on people hit, 
for(var i=0 ; i < ds_list_size(people_hit) ; i++)
{
	var living = ds_list_find_value(people_hit, i)
	// if they're still alive, deal it out
	if instance_exists(living)
	{
		show_debug_message("      Character " + string(living.id) +": Eff with " + string(id))
		handle_effect(self, living)
		/*var visual = instance_create_layer(living.x, living.y, "Foreground", oDamageVisual)
		with visual
		{
			sprite_index = sBlueBurst
			image_blend = c_white
			// set size too
			image_xscale = .75
			image_yscale = .75
		}*/

	}
	else
	{
		// if the target dies,
		// getem outa here and adjust i
		ds_list_delete(people_hit, i)
		i--	
	}
}