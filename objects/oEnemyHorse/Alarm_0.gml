/// flip rotate

if current_state == ai_wander then current_state = ai_follow
else if current_state == ai_follow
{
	current_state = ai_aggro
	current_attack = main_attack
}
else if current_state == ai_aggro then current_state = ai_wander