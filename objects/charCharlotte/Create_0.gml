/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

main_attack = instance_create_layer(x, y, "Instances", abil_mele_slam)
second_attack = instance_create_layer(x, y, "Instances", abil_proj_spit)
third_attack = instance_create_layer(x, y, "Instances", abil_proj_grenade)

with main_attack
{
	my_attacker = other	
}
with second_attack
{
	my_attacker = other	
}
with third_attack
{
	my_attacker = other	
}