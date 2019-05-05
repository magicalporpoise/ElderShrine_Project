/// randomize the characters abilities
ability_master_list = ds_list_create()
ds_list_add(ability_master_list, abil_proj_grenade)
ds_list_add(ability_master_list, abil_proj_scream)
ds_list_add(ability_master_list, abil_proj_lightning)
ds_list_add(ability_master_list, abil_mele_slam)
ds_list_add(ability_master_list, abil_mele_charge)
ds_list_add(ability_master_list, abil_cast_howl)
ds_list_add(ability_master_list, abil_proj_spit)
ds_list_add(ability_master_list, abil_proj_fullcircle)
wheel_one = [abil_proj_grenade, abil_proj_scream, abil_proj_lightning, abil_mele_slam]
wheel_two = [abil_mele_charge, abil_cast_howl, abil_proj_spit, abil_proj_fullcircle]
wheel_three = []

randomize()
character_creation = true
creation_index = irandom(ds_list_size(ability_master_list)-1)
ma = noone
sa = noone
mainplayer = noone
mainshrine = instance_create_layer(x, y, "Instances", oShrine)
ds_list_shuffle(ability_master_list)
level_made = true

//depth = -100000000000000000000000
// make camera
//view_camera[0] = camera_create_view(room_width div 2, room_height div 2, 700, 700, 0, mainplayer, 10, 10, 150, 150);
//var viewmat = matrix_build_lookat(640, 240, -10, 640, 240, 0, 0, 1, 0);
//var projmat = matrix_build_projection_ortho(640, 480, 1.0, 32000.0);
//camera_set_view_mat(view_camera[0], viewmat);
//camera_set_proj_mat(view_camera[0], projmat);
//camera_apply(view_camera[0])
// target player
//camera_set_view_target(view_camera[0], mainplayer)
//camera_set_view_speed(view_camera[0], -1, -1);
//camera_set_view_border(view_camera[0], 500, 500);
//camera_set_end_script(view_camera[0], camera_adjust_pos)//view_camera[0], mainplayer, 10, 20)