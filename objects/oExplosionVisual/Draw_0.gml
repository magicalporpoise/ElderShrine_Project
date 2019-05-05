// delete self when image_index reachs end

depth = -2*y

if image_index >= sprite_get_number(sprite_index) - 2
{
	instance_destroy(self)	
}


draw_self()

