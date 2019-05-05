/// am i clicked on?
if visible
{
	var dist = point_distance(x, y, mouse_x, mouse_y)
	if dist < sprite_width then hover = true
	else hover = false
	if mouse_check_button(mb_left)
	{
		if hover
		{
			// store action in alarm 0
			alarm_set(0, 1)
			image_blend = c_white
		}
	}
}


//draw_set_color(my_text_color)
//draw_text(x, y, my_text)