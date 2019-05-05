/// deal_attack(attacker, attack, defender)

var dealer = argument0
var effect = argument1
var defend = argument2

// modify attack with dealer's attributes
//---------------------------------------

// add copy of attack to defender's incoming attacks
// if the attack is already there, do not

ds_list_add(defend.incoming_effects, effect)
ds_list_add(effect.people_hit, defend)

return defend.hit_points