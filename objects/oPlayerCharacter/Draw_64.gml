/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// how many corpses they have
for (var i = 0 ; i < ds_list_size(corpses_collected) ; i++)
{
	var xs = 3
	var ys = 3
	var w = sprite_get_width(sBleed)
	var h = sprite_get_height(sBleed)
	draw_sprite_ext(sBleed, 0, (xs*w*i)+xs*w div 2, h*2, xs, ys, 0, c_yellow, 1)
}

draw_set_color(c_yellow)
draw_set_font(build_font_small)
draw_text(32,32, "CORPSES: " + string(ds_list_size(corpses_collected)))
draw_set_color(c_orange)
draw_set_font(build_font_small)
draw_text(32,32*2, "STR: " + string(effective_strength))
draw_text(32,32*3, "CON: " + string(effective_constitution))
draw_set_color(c_aqua)
draw_text(32,32*4, "INT: " + string(effective_intellect))
draw_text(32,32*5, "WIL: " + string(effective_willpower))
draw_set_color(c_green)
draw_text(32,32*6, "LUK: " + string(effective_luck))
draw_text(32,32*8, "level: " + string(level))

// draw player health bars
draw_bar(room_width div 2, 14*room_height div 16, room_width div 2, room_height div 32, hit_points, hit_points_max, c_orange)
draw_bar(room_width div 2, 14*room_height div 16, room_width div 2, room_height div 32, wit_points, wit_points_max, c_aqua)


/*
if main_attack != noone
{
	main_attack.x = x
	main_attack.y = y
}
if second_attack != noone
{
	second_attack.x = x
	second_attack.y = y
}
if third_attack != noone
{
	second_attack.x = x
	second_attack.y = y
}*/