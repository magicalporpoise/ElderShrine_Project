/// Swing applies its attack to an area

// inherit
event_inherited()
//show_debug_message("^oHammerSwing^")

// modify size and distance of swing
swinging = true

swing_width = 100
//image_xscale = swing_width / sprite_width
swing_height = 64
//image_yscale = swing_height / sprite_height

swing_distance = 80
swing_direction = 0
swing_duration = 15
swing_windup = 15
swing_cooldown = 5

// attack obj to apply over area
ds_list_clear(my_attack)
ds_list_add(my_attack, atk_smash)
ds_list_add(my_attack, eff_knockback)