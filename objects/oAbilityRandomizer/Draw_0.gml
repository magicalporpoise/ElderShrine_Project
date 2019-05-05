/// @description Insert description here
// You can write your code in this editor
if character_creation
{
	var sprite, newi, size, xx, yy, midx, midy, shrine 
	shrine = instance_nearest(x, y, oShrine)
	midx = shrine.x
	midy = shrine.y
	size = ds_list_size(ability_master_list)
	for (var i = 0 ; i < size ; i++)
	{
		newi = (creation_index + i) mod size
		sprite = ds_list_find_value(ability_master_list, newi)
		sprite = object_get_sprite(sprite)
		depth = -y*4
		draw_sprite_ext(sprite, 0, midx, midy, .5, .5, 0, c_white, 1 - (newi / size))
	}
}
else
{
	if instance_exists(mainplayer)
	{
		if mainplayer.visible
		{
			var sprite, color
			var camx = camera_get_view_x(view_camera[0])
			var camy = camera_get_view_y(view_camera[0])
			var xx = camera_get_view_width(view_camera[0]) div 16
			var yy = camera_get_view_height(view_camera[0]) div 16
			if ma != noone
			{	
				if mainplayer.main_offcd then color = c_white
				else color = c_black
				depth = -y*4
				sprite = object_get_sprite(ma)
				draw_sprite_ext(sprite, 0, camx + xx*15, camy + yy*2, .15, .15, 0, color, 1)
			}
			if sa != noone
			{
				if mainplayer.second_offcd then color = c_white
				else color = c_black
				depth = -y*4
				sprite = object_get_sprite(sa)
				draw_sprite_ext(sprite, 0, camx + xx*15, camy + yy*6, .15, .15, 0, color, 1)
			}
		}
	}
}