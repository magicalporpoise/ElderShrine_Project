/// show numbers
	draw_self()
	draw_set_color(c_white)
	draw_set_font(build_font)
//draw_text(x, y+sprite_height div 2, name)
	//draw_text(x, y+32, string("effects" + string(ds_list_size(incoming_effects))))
	//draw_text(x, y+48, string("attacks" + string(ds_list_size(incoming_attacks))))
	
if hit_points < hit_points_max or wit_points > 0
{
	draw_bar(x, y-(sprite_height div 2)-32, abs(sprite_width) div 2, 22, hit_points, hit_points_max, c_orange)
	draw_bar(x, y-(sprite_height div 2)-32, abs(sprite_width) div 2, 22, wit_points, wit_points_max, c_aqua)
}
