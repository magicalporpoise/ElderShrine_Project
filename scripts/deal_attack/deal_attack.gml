/// deal_attack(attacker, attack, defender)

var dealer = argument0
var attack = argument1
var defend = argument2

// modify attack with dealer's attributes
//---------------------------------------

// add copy of attack to defender's incoming attacks
// if the attack is already there, do not
//		unless by some unique effect where 
// give out attack and record attack
ds_list_add(defend.incoming_attacks, attack)
ds_list_add(attack.people_hit, defend)
	
// apply effects
/*for(var i=0 ; i < ds_list_size(attack.damage_effects) ; i++)
{
	var new_eff = ds_list_find_value(attack.damage_effects, i)
	var apply_eff = instance_create_depth(attack.x, attack.y, "Instances", new_eff)
	// owner ship and who to hit
	with apply_eff
	{
		my_attacker = dealer
	}
	deal_effect(dealer,apply_eff, defend)
}*/

return defend.hit_points