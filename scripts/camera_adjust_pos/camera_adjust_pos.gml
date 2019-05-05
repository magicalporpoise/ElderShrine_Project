// @description camera_adjust_pos(camera, target, speed, distance)
// @argument cam
// @arg tar
// @arg dst
// @arg spd

// END SCRIPT OF PLAYER CAMERA

// move the camera SLIGHTLY inline with mouse and character position
// at a certain speed at a maximum distance from the target

// args
var cam = argument0
var tar = argument1
var spd = argument2
var dst = argument3

// coordinates
var cw = camera_get_view_width(cam)
var ch = camera_get_view_height(cam)
var cx = camera_get_view_x(cam) + (cw div 2) // mid of screen
var cy = camera_get_view_y(cam) + (ch div 2) // mid of screen
var tx = tar.x
var ty = tar.y

// direction to mouse
//var dist_cam_mouse = point_distance(cx, cy, mouse_x, mouse_y)
//var angl_cam_mouse = point_direction(cx, cy, mouse_x, mouse_y)
var dist_tar_mouse = point_distance(tx, ty, mouse_x, mouse_y)
var angl_tar_mouse = point_direction(tx, ty, mouse_x, mouse_y)
//var dist_tar_cam = point_distance(tx, ty, cx, cy)
//var angl_tar_cam = point_direction(tx, ty, cx, cy)

// amount to adjust by
// aim for outer distance of the circle surrounding the player
var newx, newy
if dist_tar_mouse < 2*dst
{
	newx = (tx + mouse_x) div 2// - (cw div 2)
	newy = (ty + mouse_y) div 2// - (ch div 2)
}
else 
{
	newx = (tx + lengthdir_x(dst, angl_tar_mouse))// - (cw div 2)
	newy = (ty + lengthdir_y(dst, angl_tar_mouse))// - (ch div 2)
}

// distances
var dist_cam_new = point_distance(cx, cy, newx, newy)
var angl_cam_new = point_direction(cx, cy, newx, newy)
var dist_tar_new = point_distance(tx, ty, newx, newy)
// modify speed with proximity to player: closer, slower??
// adjust
if dist_cam_new > spd
{
	//go towards
	newx = (cx + lengthdir_x(spd, angl_cam_new)) // - (cw div 2)
	newy = (cy + lengthdir_y(spd, angl_cam_new)) // - (ch div 2)
}


// adjust into corner
newx -= (cw div 2)
newy -= (ch div 2)

// now move spd much in that direction
camera_set_view_pos(cam, newx, newy)
