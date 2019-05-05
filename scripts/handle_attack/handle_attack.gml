/// handle_attack(attack, defender)

var attack = argument0
var defend = argument1

if not instance_exists(attack.my_attacker) or not instance_exists(defend)
{
	exit	
}

var attacker = attack.my_attacker
var dd = 0 // damage to be dealt
var crit = false // if its a crit
// modify attack with defender's attributes
//-----------------------------------------
// str and int versus end and wil affect maximum damage
if attack.damage_type == dmgt_phys
{
	// max damage to be dealt
	var ddmax = attacker.effective_strength
	// min damage luck roll
	crit = (random(100) < attacker.effective_luck)
	// how much damage?
	dd = (crit?3:1) * roll_dice(attack.damage_amount, 1, ddmax)
	// adjust damage dealt
	dd = max(0, dd -  defend.effective_constitution)
	// deal damage
	defend.hit_points = defend.hit_points - dd
}
else if attack.damage_type == dmgt_ment
{
	// max damage to be dealt
	var ddmax = attacker.effective_intellect
	// min damage luck roll
	var crit = (random(100) < attacker.effective_luck)
	// how much damage?
	dd = (crit?3:1) * roll_dice(attack.damage_amount, 1, ddmax)
	// deal damage
	defend.wit_points = defend.wit_points + dd
}

// CREATE VISUAL DAMAGE OBJECT
if dd > 0
{
	// relative scales for damage done
	// set xscale and yscale to these
	var relx = log10(dd)
	var rely = log10(dd)
	
	
	// DAMAGE VISUAL
	var visual
	visual = instance_create_layer(defend.x, defend.y, "Foreground", oDamageVisual)
	with visual
	{
		damage_dealt = dd	
		// change text
		if attack.damage_type == dmgt_phys then image_blend = c_orange
		else if attack.damage_type == dmgt_ment then image_blend = c_aqua
		// set size too
		image_xscale = relx
		image_yscale = rely
		
	}

	// Sound Effect
	if dd < 10
	{
		audio_sound_pitch(soundHit, -relx+5)
		audio_play_sound(soundHit, 10, false)
	}
	else 
	{
		audio_sound_pitch(soundHitMetallic, -relx+5)
		audio_play_sound(soundHitMetallic, 10, false)
	}
	
	//TRACK DAMAGE DEALT
	if attack.damage_type == dmgt_phys then attack.my_attacker.pain_dealt += dd
	else if attack.damage_type == dmgt_ment then attack.my_attacker.stress_dealt += dd
	
	defend.last_hit_by = attack.my_attacker.object_index

}

// SCREEN SHAKE HERE