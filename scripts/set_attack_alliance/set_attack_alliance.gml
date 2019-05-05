/// set_attack_alliance(attacker, atk_applier)

/// @description create_swing(att, app)
/// @arg att - attacker
/// @arg app - applier

var att, app;
att = argument0
app = argument1

with app
{
	my_attacker = att
	team_no_hit = my_attacker.alliance
	
	// ownership of the attack
	/*with my_attack
	{
		// pass on attacker
		my_attacker = other.my_attacker
		team_no_hit = other.team_no_hit
	}*/
}