/// @description Insert description here
// You can write your code in this editor

var play = instance_nearest(x, y, oPlayerCharacter)
with play 
{
	strength = strength + 1	
	constitution = constitution + 1
}
my_conductor.current_state = at_play

//set_up_level()