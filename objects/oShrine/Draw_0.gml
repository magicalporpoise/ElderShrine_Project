/// @description Insert description here
// You can write your code in this editor
/*
draw_set_color(c_red)
draw_text(x, y, string(shrine_level))

draw_set_color(c_orange)
draw_text(x+32, y, string(shrine_corpses))

draw_set_color(c_blue)
draw_text(x-32, y, string(shrine_next_level))
*/

//draw_bar(x, y-sprite_height, sprite_width, 16, shrine_corpses, shrine_next_level, c_yellow)

// SHOW RADIUS
draw_set_color(c_yellow)
draw_circle(x, y, 16*shrine_corpses, false)
draw_circle(x, y, 16*shrine_next_level, true)
draw_circle(x, y, aura_radius, true)

draw_set_color(c_white)
draw_self()