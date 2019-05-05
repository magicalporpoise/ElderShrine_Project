/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
alliance = self.object_index
// change aggro view
player_aggro = 400

// main attack
main_attack = instance_create_layer(x, y, "Instances", abil_batwing_bite)
ds_list_add(my_attacks, main_attack)
// set alliance
with main_attack
{
	my_attacker = other	
}

// flip roatation
wander_rotate = 10

// attack and charge spot that player IS RIGHT NOW
ability_target = [0, 0]

// change size
image_xscale = 2.5
image_yscale = 2.5

set_character_stats(self, [20, 20], [2, 2, 2, 2, 2, 1])