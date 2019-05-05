/// if activated, do it
event_inherited()
if activated
{
	var atk = instance_create_layer(my_attacker.x, my_attacker.y, "Instances", oHugeSlam)
	set_attack_alliance(my_attacker, atk)
	with atk
	{
		// change attack info
		ds_list_clear(my_attack)
		ds_list_add(my_attack, atk_phys_strong)
		ds_list_add(my_attack, eff_knockback)
		
		image_xscale = 8
		image_yscale = 8
		image_blend = c_orange
	}
	
	//deactivate
	activated = false
}
