/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
mother = noone
// change aggro view
player_see = 500
player_aggro = 100

// main attack
// howl (like player's)
// pounce (bleed)
main_attack = instance_create_layer(x, y, "Instances", abil_batwing_bite)
ds_list_add(my_attacks, main_attack)
// set alliance
with main_attack
{
	my_attacker = other	
}

// flip roatation
attack_dir = random(360)
move_angle = random(360)

// attack and charge spot that player IS RIGHT NOW
ability_target = [0, 0]

// change size
image_xscale = 2
image_yscale = 2
alliance = oEnemyHellHound
set_character_stats(self, [20, 20], [4, 4, 4, 4, 2, 1])