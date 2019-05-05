
/// inform players of this build
if current_state == at_menu
{
	draw_set_color(c_white)
	//
	// UPDATE THIS BEFORE EVERY EXPORT
	//
	// title concept
	draw_set_font(build_font_huge)
	draw_text(1*mx, 1*my, "::Elder Shrine::")
	draw_set_font(build_font_small)
	draw_text(1*mx, 3*my, "Call upon the power of the Elder Gods for Immense Power!!")
	
	// objective
	draw_set_font(build_font)
	draw_text(1*mx, 6*my, "OBJECTIVE")
	draw_text(1*mx, 7*my, "* enemies drop Corpses")
	draw_text(1*mx, 8*my, "* touching them picks them up")
	draw_text(1*mx, 9*my, "* the SHRINE needs 8 Corpses for Level Up")
	draw_set_color(c_orange)
	draw_text(1*mx, 11*my,"* damage: AGONY (orange)")
	draw_set_color(c_aqua)
	draw_text(1*mx, 12*my,"* damage: STRESS (cyan)")
	draw_set_color(c_white)
	draw_text(1*mx, 13*my,"* damage: On overlap ==> DEATH")
	
	// build
	draw_text(1*mx, 14*my, "Build: 1.05 - presentable")
}
else if current_state == at_controls
{
	// controls
	draw_set_color(c_aqua)
	draw_set_font(build_font_huge)
	draw_text(6*mx, 1*my, "CONTROLS")
	draw_set_font(build_font)
	draw_text(2*mx, 3*my, "* Movement = WASD")
	draw_text(2*mx, 4*my, "* Aim with MOUSE")
	draw_sprite_ext(sCursor, 0, 8*mx, 4*my, 1, 1, 0, c_white, 1)
	draw_text(2*mx, 5*my, "* 2 abilities = MOUSE 1, MOUSE 2")
	draw_sprite_ext(sPlayer_attack, 11, 8*mx, 5*my, 1, 1, 0, c_white, 1)
	draw_text(2*mx, 6*my, "* SPACE = swift dodge")
	draw_sprite_ext(sPlayer_dodge, 0, 8*mx, 6*my, 1, 1, 0, c_white, 1)
	draw_text(2*mx, 10*my, "* AT THE RANDOMIZER: press SPACE or MOUSE1 to get power")
	draw_text(2*mx, 12*my, "* ESC to menu")
}
else if current_state == at_credits
{
	// credits
	draw_set_font(build_font_huge)
	draw_set_color(c_orange)
	draw_text(6*mx, 1*my, "CREDITS")
	draw_text(1*mx, 2*my, "Programming by Philip Stanley")
	draw_text(1*mx, 3*my, "Music by Dakota Linn")
	draw_text(1*mx, 4*my, "Effects by Will Tice (@freed_will)")
	draw_text(1*mx, 5*my, "Artwork created by Luis Zuno (@ansimuz)")
	draw_text(1*mx, 6*my, "Effects by @DavitMasia and @CodeManuPro")
}
else if current_state == at_upgrade
{

	// credits
	var player = instance_nearest(x, y, oPlayerCharacter)
	draw_set_font(build_font_huge)
	draw_set_color(c_orange)
	draw_text(7*mx, 1*my, "AGONY DEALT: " + string(player.pain_dealt))
	
	draw_set_color(c_aqua)
	draw_text(7*mx, 2*my, "STRESS DEALT: " + string(player.stress_dealt))
}
else if current_state == at_death
{
	var camx = camera_get_view_x(view_camera[0])
	var camy = camera_get_view_y(view_camera[0])
	var camw = camera_get_view_width(view_camera[0]) div 16
	var camh = camera_get_view_height(view_camera[0]) div 16
	draw_sprite_ext(sSwing, 0, x, y, 100, 100, 0, c_black, 0.5)
	var player = instance_nearest(x, y, oPlayerCharacter)
	draw_set_font(build_font_huge)
	draw_set_color(c_yellow)
	draw_text(2*camw+camx, 5*camh+camy, "LEVEL REACHED: " + string(tracker_level))
	
	draw_set_color(c_orange)
	draw_text(2*camw+camx, 7*camh+camy, "AGONY DEALT: " + string(tracker_pain))
	
	draw_set_color(c_aqua)
	draw_text(2*camw+camx, 9*camh+camy, "STRESS DEALT: " + string(tracker_stress))
	
	draw_set_color(c_white)
	draw_text(9*camw+camx, 6*camh+camy, "::KILLED BY::")
	draw_sprite_ext(object_get_sprite(tracker_killed_player), 0, 11*camw+camx, 9*camh+camy, 3, 3, 0, c_white, 1)
}