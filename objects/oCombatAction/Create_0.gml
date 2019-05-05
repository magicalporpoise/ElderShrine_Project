/// Attacks deal damage andor effects to deathable targets

// debug
//show_debug_message("Attack created: " + string(id))

// team to hit
//		-1 means hit all
//		else check a deathable's alliance
team_no_hit = -1

//attacker
my_attacker = noone

// people hit
people_hit = ds_list_create()


show_debug_message("creating: " + object_get_name(object_index) + " -- " + string(id))