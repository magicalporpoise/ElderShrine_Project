/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

ds_list_destroy(my_attacks)

if main_attack != noone then instance_destroy(main_attack)
if second_attack != noone then instance_destroy(second_attack)
if third_attack != noone then instance_destroy(third_attack)

audio_play_sound(soundDeath, 12, false)