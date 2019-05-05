/// establish states

// states
#macro at_menu 42
#macro at_play 43
#macro at_credits 44
#macro at_controls 45
#macro at_upgrade 46
#macro at_death 47

// set current states
current_state = at_menu
last_state = at_menu
menu_buttons = ds_list_create()
upgrade_buttons = ds_list_create()

// created in init_room, establish btton placement
md = 16
mx = room_width div md
my = room_height div md

var but = instance_create_layer(8*mx, 8*my, "Instances", button_playgame)
with but { my_conductor = other}
ds_list_add(menu_buttons, but)
but = instance_create_layer(13*mx, 4*my, "Instances", button_credits)
with but { my_conductor = other}
ds_list_add(menu_buttons, but)
but = instance_create_layer(13*mx, 12*my, "Instances", button_controls)
with but { my_conductor = other}
ds_list_add(menu_buttons, but)

// upgraders
but = instance_create_layer(3*mx, 10*my, "Instances", button_upgradeSTR)
with but { my_conductor = other}
ds_list_add(upgrade_buttons, but)
but = instance_create_layer(13*mx, 10*my, "Instances", button_upgradeINT)
with but { my_conductor = other}
ds_list_add(upgrade_buttons, but)
but = instance_create_layer(8*mx, 10*my, "Instances", button_upgradeLUC)
with but { my_conductor = other}
ds_list_add(upgrade_buttons, but)
upgrade_buttons_appear(false)

// set cursor sprite
window_set_cursor(cr_none)
//window_set_color(c_purple)
cursor_sprite = sCursor

tracker_killed_player = noone
tracker_pain = 0
tracker_stress = 0
tracker_level = 0
level_made = true

if not audio_is_playing(musicMenu)
			{
				audio_play_sound(musicMenu, 10, false)
			}