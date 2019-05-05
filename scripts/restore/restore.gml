/// restore(character, physical?, amount)

// restore a character

var char = argument0
var phys = argument1
var a = argument2

if phys
{
	char.hit_points = min(char.hit_points_max, char.hit_points + a)	
}
else
{
	char.wit_points = max(0, char.wit_points - a)	
}