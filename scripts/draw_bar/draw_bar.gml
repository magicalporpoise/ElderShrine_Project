/// @description draw_bar(x, y, w, h, val, max, c)
// @arg x
// @arg y
// @arg w
// @arg h
// @arg v
// @arg m
// @arg c
// make a rectangle
// it will be centered at x, y
// with a height of h and width of w
// the colored in portion will be v% of m 
//		over the width of the rectangle
// in c color

{
	var xx, yy, w, h, v, m, c;
	xx = argument0
	yy= argument1
	w = argument2
	h = argument3
	v = argument4
	m = argument5
	c = argument6

	// get half sides
	var h_h = h div 2
	var h_w = w div 2

	var xx1 = xx - h_w
	var yy1 = yy - h_h
	var xx2 = xx + h_w
	var yy2 = yy + h_h
	var fill_x = xx1 + w * (v / m)
	
	// draw outline
	draw_set_color(c_white)
	draw_rectangle(xx1, yy1, xx2, yy2, true)
	// draw fill in
	draw_set_color(c)
	draw_rectangle(xx1, yy1, fill_x, yy2, false)
}











