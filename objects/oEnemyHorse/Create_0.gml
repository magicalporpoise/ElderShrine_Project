/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
alliance = self.object_index
// change aggro view
player_aggro = 100
player_see = 400

// main attack
main_attack = instance_create_layer(x, y, "Instances", abil_horse_charge)
ds_list_add(my_attacks, main_attack)
// set alliance
with main_attack
{
	my_attacker = other	
}


// change size
image_xscale = 2.5
image_yscale = 2.5

set_character_stats(self, [65, 65], [4, 4, 4, 4, 4, 1])