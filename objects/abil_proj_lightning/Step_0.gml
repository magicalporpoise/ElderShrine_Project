/// if activated, do it
event_inherited()
if activated
{
	// make many
	var atk
	var num_proj = 1
	for (var i = 0 ; i < num_proj ; i++)
	{
		atk = instance_create_layer(my_attacker.x, my_attacker.y, "Instances", oLightning)
		set_attack_alliance(my_attacker, atk)
		with atk
		{
			// set dir
			proj_dir = my_attacker.attack_dir
			image_blend = c_orange
			audio_play_sound(soundSqueak, 4, false)
		}		
	}
	
	//deactivate
	activated = false
}
