/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if sprite_index = sHellBeast_flame
{
	if image_index == sprite_get_number(self.sprite_index)
	{
		image_index = sprite_get_number(self.sprite_index) -1
	}
}