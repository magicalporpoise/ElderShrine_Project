/// destroy neessary dt's

// make corpse

instance_create_layer(x, y, "Instances", oCorpse)

//attacks

ds_list_destroy(incoming_attacks)

// effects

ds_list_destroy(incoming_effects)

var explosion = sExplosion_sparky
var dd = hit_points_max
var ranges = [100, 60, 30, 20]
if dd > ranges[0]
{
	explosion = sExplosion_vortex
	audio_play_sound(soundExplosiondark, 12, false)
} else if dd > ranges[1]
{
	explosion = sExplosion_x
	audio_play_sound(soundExplosiondark, 11, false)
} else if dd > ranges[2]
{
	explosion = sExplosion_round
	audio_play_sound(soundExplosion1, 10, false)
} else if dd > ranges[3]
{
	explosion = sExplosion_sparkup
	audio_play_sound(soundExplosionsmall, 9, false)
}
else 
{
	audio_play_sound(soundExplosionmuffled, 8, false)
}
if layer_exists("Foreground")
{
	var visual = instance_create_layer(x, y, "Foreground", oExplosionVisual)
	with visual
	{
		sprite_index = explosion
		// set size too
		image_xscale = dd div 10
		image_yscale = dd div 10
	}
}