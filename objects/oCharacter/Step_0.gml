/// step the character thru

// inherited from deathable
event_inherited()
if not dead
{
	// get the modified value of each stat
	// strength
	effective_strength = (strength )//+ strength_modadd) * strength_modmult
	// constitution
	effective_constitution = (constitution)// + constitution_modadd) * constitution_modmult
	// intellect
	effective_intellect = (intellect)// + intellect_modadd) * intellect_modmult
	// willpower
	effective_willpower = (willpower)// + willpower_modadd) * willpower_modmult
	// luck
	effective_luck = (luck)// + luck_modadd) * luck_modmult
	// agility
	effective_agility = (agility)// + agility_modadd) * agility_modmult
	
	//reset attack
	if current_attack == noone then is_attacking = false

	// put cards in visible place
	/*var s = ds_list_size(my_attacks)
	if s > 1
	{
		var a = 180 div s
		var card
		for( var l = 0 ; l < s ; l++)
		{
			card = ds_list_find_value(my_attacks, l)
			card.x = x + lengthdir_x(abs(sprite_width) div 2 +15, l*a + 200)
			card.y = y + lengthdir_y(abs(sprite_width) div 2 +15, l*a + 200)
		}
	}*/
}

