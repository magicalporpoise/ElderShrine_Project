/// draw amount of damage dealt

draw_set_color(image_blend)
draw_set_alpha(opacity)
if damage_dealt > 0
{
	draw_set_font(build_font_huge)
	draw_text_transformed(x, y, string(damage_dealt), log10(damage_dealt), log10(damage_dealt), 0)
}

if sprite_exists(sprite_index)
{
	draw_self()	
}
//draw_self()
draw_set_alpha(100)