/// @description Insert 
/// show numbers
	draw_self()
	draw_set_color(c_white)
	draw_set_font(build_font)
//draw_text(x, y+sprite_height div 2, name)
//draw_text(x, y+32, string("effects" + string(ds_list_size(incoming_effects))))
//draw_text(x, y+48, string("attacks" + string(ds_list_size(incoming_attacks)))

//draw_bar(x+room_width div 2, y+14*room_height div 16, room_width div 2, room_height div 32, hit_points, hit_points_max, c_orange)
//draw_bar(x+room_width div 2, y+14*room_height div 16, room_width div 2, room_height div 32, wit_points, wit_points_max, c_aqua)


// draw_arrows at enemies

if instance_exists(oEnemy)
{
	var dir
	with oEnemy
	{
		dir = point_direction(other.x, other.y, x, y)
		// paint arrow
		draw_sprite_ext(sPoint, 0, other.x + lengthdir_x(200, dir), other.y + lengthdir_y(200, dir), 0.5, 0.5, dir, c_red, 1)
	}
}
