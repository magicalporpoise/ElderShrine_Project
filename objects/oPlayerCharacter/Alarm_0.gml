/// Employ main attack
is_attacking = true

if current_attack == main_attack
{
	main_attack.activated = true
	sprite_index = sPlayer_attack
	
} 
else if current_attack == second_attack
{
	second_attack.activated = true
	sprite_index = sPlayer_attack
	
} 
else if current_attack == third_attack
{
	third_attack.activated = true
	sprite_index = sPlayer_attack
}
else if current_attack == -12
{
		
}

current_attack = noone
all_offcd = true