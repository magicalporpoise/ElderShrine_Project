/// @description Insert description here
// You can write your code in this editor

var play = instance_nearest(x, y, oPlayerCharacter)
with play 
{
	intellect += 1	
	willpower += 1
}
my_conductor.current_state = at_play
//set_up_level()