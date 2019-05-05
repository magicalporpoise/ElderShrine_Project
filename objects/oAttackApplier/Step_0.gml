/// apply attacks
// to interaction area	
// look for enemies
// - add in later:
//		team based targeting
if ds_list_size(my_attack) > 0
{
	// proper activation
	if duration > 0 and windup <= 0
	{		
		// countdown
		duration = duration -1
	
		// make visible
		if not visible then visible = true
		
		//ATTACK
		var target_obj = oDeathable
		var apply_attacks = instance_place_list2(x, y, target_obj)	
		// apply attacks, if there...
		if apply_attacks != noone 
		{//for all on that list...
			for(var i=0 ; i < ds_list_size(apply_attacks) ; i++)
			{//check each defender...
				var defender = ds_list_find_value(apply_attacks, i)
				// verify if hit
				var hit = false
				if team_no_hit != defender.alliance then hit = true
				// successful hit on right team
				if hit
				{// ...iterate who to hit...
					if ds_list_find_index(people_hit, defender) == -1
					{//...has this hit that person before?...
						//make new attack obj
						for(var k=0 ; k < ds_list_size(my_attack) ; k++)
						{
							var attack_or_effect = ds_list_find_value(my_attack, k)
							// the actual object
							var atk = instance_create_layer(x, y, "Instances", attack_or_effect)
							with atk
							{// get the hit list from this applier
								my_attacker = other.my_attacker
								//ds_list_copy(people_hit, other.people_hit)	
							}
				
							// DEAL THE ATTACK or EFFECT
							if object_index == oAttack then deal_attack(my_attacker, atk, defender)
							else deal_effect(my_attacker, atk, defender)

							// add onto people_hit here too
							for(var j=0 ; j < ds_list_size(atk.people_hit) ; j++)
							{
								var maybe_new = ds_list_find_value(atk.people_hit, j)
								//var is_in_here = ds_list_find_index(self.people_hit, maybe_new)
								//if is_in_here == -1 then 
								ds_list_add(self.people_hit, maybe_new)
							}
						}
					}
				}
			}	
			// destroy list
			ds_list_destroy(apply_attacks)
		} 
	} 
	else if windup > 0 //and activated
	{
		// windup
		//	make it invisible
		if visible then visible = false
		windup = windup - 1	
	}
	else if cooldown > 0
	{
		// cooldown
		//	make it invisible
		if visible then visible = false
		cooldown = cooldown - 1	
	}
	else 
	{
		// det self
		instance_destroy(self)
	}
}
else 
{
	instance_destroy(self)
}
	
	