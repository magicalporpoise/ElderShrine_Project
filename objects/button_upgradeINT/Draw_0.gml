/// @description Insert description here
// You can write your code in this editor
draw_self()
var use_font = noone
if hover
{
	image_xscale = 0.7
	image_yscale = 0.7
	use_font = build_font_huge
}
else 
{
	image_xscale = 0.3
	image_yscale = 0.3
	use_font = build_font
}
draw_set_font(use_font)
draw_set_color(my_text_color)
var width = font_get_size(use_font)
var length = string_length(my_text)
var mid = (length * width) div 2
draw_text(x-mid, y-sprite_height, my_text)