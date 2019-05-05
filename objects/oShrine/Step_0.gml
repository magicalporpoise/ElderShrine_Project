/// suck out corpses
// pull in
if instance_exists(oPlayerCharacter)
{
	var play = instance_nearest(x, y, oPlayerCharacter)
	aura_radius = point_distance(x, y, play.x, play.y)	
}
// suckin skulls
with oCorpse
{
	var d_to_shrine = point_distance(x, y, other.x, other.y)
	if 	d_to_shrine < other.aura_radius
	{
		d_to_shrine = point_direction(x, y, other.x, other.y)
		move(3, d_to_shrine)
	}
}
// suck from play
if place_meeting(x, y, oPlayerCharacter)
{
	var player = instance_nearest(x, y, oPlayerCharacter)
	var has_corpse = ds_list_size(player.corpses_collected)
	if has_corpse > 0
	{
		// exchange
		shrine_corpses += has_corpse
		
		// level up
		var level_up = shrine_corpses-shrine_next_level
		if level_up >= 0
		{	
			player.level += 1
			var menu = instance_nearest(x, y, oMenuConductor)
			with menu{current_state = at_upgrade}
			shrine_corpses = 0
			shrine_next_level = 8
			
			audio_play_sound(soundLevelUp, 20, false)
		}
		
		// destroy corpses, clear list
		for(var i = 0 ; i < has_corpse ; i++)
		{
			var destroy = ds_list_find_value(player.corpses_collected, i)
			instance_destroy(destroy)
		}
		ds_list_clear(player.corpses_collected)
		
		// play sound
		audio_play_sound(soundGiveCorpses, 11, false)
	}
}
// SET UP LEVEL
if visible
{
	if not level_made
	{
		set_up_level()
		level_made = true
	}
}
