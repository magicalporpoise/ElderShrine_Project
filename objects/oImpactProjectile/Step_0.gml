/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// det self if hitting someone
if place_meeting(x, y, oDeathable)
{
	var det = instance_nearest(x, y, oDeathable)
	if det != my_attacker
	{
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
			if object_index == oAttack then deal_attack(my_attacker, atk, det)
			else deal_effect(my_attacker, atk, det)

			// add onto people_hit here too
			for(var j=0 ; j < ds_list_size(atk.people_hit) ; j++)
			{
				var maybe_new = ds_list_find_value(atk.people_hit, j)
				//var is_in_here = ds_list_find_index(self.people_hit, maybe_new)
				//if is_in_here == -1 then 
				ds_list_add(self.people_hit, maybe_new)
			}
		}
		instance_destroy(self)	
	}
}
