/// ATTACK
if current_attack == 1
{
	var atk = instance_create_layer(x, y, "Instances", oProjectile)
	set_attack_alliance(self, atk)
	with atk
	{
		proj_dir = my_attacker.attack_dir
		image_blend = c_aqua
		sprite_index = seff_fel
		image_xscale = 2
		image_yscale = 2
		ds_list_clear(my_attack)
		ds_list_add(my_attack, atk_ment_strong)
		//show_debug_message(string(other.movement_moved))
	}	
	attack_dir += random_range(15, 45)
}
else if current_attack == 2
{
	var atk = instance_create_layer(x, y, "Instances", oHugeSlam)
	set_attack_alliance(self, atk)
	with atk
	{
		sprite_index = seff_nightmare
		image_xscale = 3
		image_yscale = 3
		image_blend = c_orange
		ds_list_clear(my_attack)
		ds_list_add(my_attack, atk_phys_strong)
	}	
}
attack_player = false