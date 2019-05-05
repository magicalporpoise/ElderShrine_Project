/// flip rotate

if current_state == ai_wander then wander_rotate = -wander_rotate
else if current_state == ai_aggro then current_state = ai_ability
else if current_state == ai_ability then current_state = ai_wander