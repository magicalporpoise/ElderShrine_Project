/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

ds_list_destroy(corpses_collected)

with oMenuConductor
{
	current_state = at_death
	tracker_killed_player = other.last_hit_by
	tracker_pain = other.pain_dealt
	tracker_stress = other.stress_dealt
	tracker_level = other.level
}