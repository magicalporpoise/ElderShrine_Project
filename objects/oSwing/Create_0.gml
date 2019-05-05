/// Swing applies its attack to an area

// inherit
event_inherited()
//show_debug_message("^oSwing^")
// modify size and distance of swing

swing_width = 64
swing_height = 32

swing_distance = 64
swing_direction = 0

activated = true
duration = 10
windup = 5
cooldown = 5

// attack obj to apply over area
ds_list_add(my_attack, atk_slash)