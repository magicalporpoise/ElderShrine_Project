/// @description Insert description here
// You can write your code in this editor

// make puppies
// but dont recur
var pups = 5
var existing_pups = instance_number(oEnemyHellPup)
var existing_hounds = instance_number(oEnemyHellHound) - existing_pups
if existing_hounds > existing_pups
{
	var puppy, rotx, roty
	for(var p = 0 ; p < pups ; p++)
	{
		rotx = lengthdir_x(sprite_width, p*(360 div pups))
		roty = lengthdir_y(sprite_height, p*(360 div pups))
		puppy = instance_create_layer(x + rotx, y + roty, "Instances", oEnemyHellPup)
		with puppy
		{
			mother = other
		}
	}
}

// Inherit the parent event
event_inherited();
alliance = self.object_index
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
decision_move = true

// change size
image_xscale = 3
image_yscale = 3

set_character_stats(self, [50, 50], [5, 5, 5, 5, 2, 1])

