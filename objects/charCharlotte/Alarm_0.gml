/// Use main attack, or secondary, or tertiary
event_inherited()
if current_attack == main_attack
{
	main_attack.activated = true
	
} else if current_attack == second_attack
{
	second_attack.activated = true
} else if current_attack == third_attack
{
	third_attack.activated = true
}