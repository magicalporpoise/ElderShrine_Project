/// movement_input(speed)

var move_spd = argument0

var move_xinput = 0;
var move_yinput = 0;
 
// cycle inputs, get move dir
for ( var i = 0; i < array_length_1d(mv); i++){
    var this_key = mv[i];
    if keyboard_check(ord(this_key)) {
        var this_angle = i*90;
        move_xinput += lengthdir_x(1, this_angle);
        move_yinput += lengthdir_y(1, this_angle);
    }
}
 
// if moving then move
var moving = ( point_distance(0,0,move_xinput,move_yinput) > 0 );
if moving  {
	//speed = clamp(speed + mv_speed_acc, 0, mv_speed_max)
    var move_dir = point_direction(0,0,move_xinput,move_yinput);
	// apply movement
	move(move_spd, move_dir)
}