	/// destroy self at the end of time
if instance_exists(my_attacker)
{
	// determine if trigger
	var trigger = false
	// DECREMENT
	if (effect_duration mod effect_tick_speed) == 0 then trigger = true
			show_debug_message("      Eff duration= " + string(effect_duration))
	effect_duration -= 1
	// activation
	if trigger
	{
		alarm_set(0, 1)
	}

	// deletion
	if effect_duration < 0 or ds_list_size(people_hit) == 0
	{
		/*for(var i=0 ; i < ds_list_size(people_hit) ; i++)
		{
			var no_longer = ds_list_find_value(people_hit, i)
			var under_effect = ds_list_find_index(people_hit, self)
			// remove individual instance of this effect from the one affected
			if instance_exists(no_longer)
			{
				var this_one = ds_list_find_index(no_longer.incoming_effects, under_effect)
				if this_one != -1 then ds_list_delete(no_longer.incoming_effects, this_one)
			}
		}*/
		// delet this
		instance_destroy(self)
	}
}