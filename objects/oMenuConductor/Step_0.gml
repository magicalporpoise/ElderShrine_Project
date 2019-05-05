/// alter state

if current_state != last_state
{
	switch(current_state)
	{
		// MENU STATE
		case at_menu:
			if audio_is_playing(musicBattle) or audio_is_playing(musicBattleLoop)
			{
				audio_stop_all()
			}
			if not audio_is_playing(musicMenu)
			{
				audio_play_sound(musicMenu, 10, false)
			}
			menu_buttons_appear(true)
			upgrade_buttons_appear(false)
			room_goto(init_room)
			if instance_exists(oAbilityRandomizer)
			{
				instance_destroy(instance_nearest(x, y, oAbilityRandomizer))
			}
			if instance_exists(oPlayerCharacter)
			{
				instance_destroy(instance_nearest(x, y, oPlayerCharacter))
			}
			break
		// CREDITS STATE
		case at_credits:
			menu_buttons_appear(false)
			break
		// CREDITS STATE
		case at_controls:
			menu_buttons_appear(false)
			break
		// UPGRADE STATE
		case at_upgrade:
			menu_buttons_appear(false)
			upgrade_buttons_appear(true)
			room_goto(upgrade_room)
			if instance_exists(oPlayerCharacter)
			{
				var player = instance_nearest(x, y, oPlayerCharacter)
				player.visible = false
			}
			if instance_exists(oShrine)
			{
				var s = instance_nearest(x, y, oShrine)
				s.visible = false
				s.level_made = false
			}
			break
		// PLAY STATE
		case at_play:
			if audio_is_playing(musicMenu)then audio_stop_all()
			if not audio_is_playing(musicBattle) and not audio_is_playing(musicBattleLoop) then audio_play_sound(musicBattle, 20, false)
			menu_buttons_appear(false)
			upgrade_buttons_appear(false)
			room_goto(play_room)
			if instance_exists(oPlayerCharacter)
			{
				var player = instance_nearest(x, y, oPlayerCharacter)
				player.visible = true
			}
			if instance_exists(oShrine)
			{
				var s = instance_nearest(x, y, oShrine)
				s.visible = true
			}
			break
		// DEATH STATE
		case at_death:
			if audio_is_playing(musicBattle) then audio_stop_all()
			menu_buttons_appear(false)
			upgrade_buttons_appear(false)
			break
		default: draw_text(x, y, "AAAAAAAAAAAAAAAAAAAAAAAa")	
	}
		
	// EXCHANGE STATES
	last_state = current_state
}


if keyboard_check(vk_escape)
{
	current_state = at_menu	
}
