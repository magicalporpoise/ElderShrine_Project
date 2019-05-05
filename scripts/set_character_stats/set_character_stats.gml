/// @desc set_character_stats(character, [hp, wp], [str, int, con, wil, agi, luc])
/// @arg character
/// @arg [hp, wp]
/// @arg [str, int, con, wil, agi, luc]

var char = argument0
var points = argument1
var hp, wp
hp = points[0]
wp = points[1]
var stats = argument2
var str, int, con, wil, agi, luc
str = stats[0]
int = stats[1]
con = stats[2]
wil = stats[3]
agi = stats[4]
luc = stats[5]

with char
{
	// resources
	hit_points_max = hp
	hit_points = hit_points_max
	wit_points_max = wp
	wit_points = 0	
	
	// stats
	strength = str
	intellect = int
	constitution = con
	willpower = wil
	agility = agi
	luck = luc
}