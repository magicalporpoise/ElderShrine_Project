/// handle_effect(effect, defender)

var effect = argument0
var defend = argument1

// modify attack with defender's attributes
//-----------------------------------------

/*if not instance_exists(effect) or not instance_exists(defend)
{
	return 0	
}*/

// deal damage
handle_attack(effect, defend)
// apply effects
//--------------

return defend.hit_points