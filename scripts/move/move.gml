/// move(spd, dir)

/// @arg speed
/// @arg direction
 
var spd = argument0;
var dir = argument1;

// where i want to go
var xtarg = x+lengthdir_x(spd,dir);
var ytarg = y+lengthdir_y(spd,dir);

 // go there if free
if place_free(xtarg,ytarg) {
    //make_way_here(xtarg, ytarg)
	x = xtarg
	y = ytarg
} else {
    var sweep_interval = 5;
    // sweep other possible places to move
    for ( var angle = sweep_interval; angle <= 90; angle += sweep_interval) {
        for ( var multiplier = -1; multiplier <= 1; multiplier += 2) {      
            var angle_to_check = dir+angle*multiplier;
            xtarg = x+lengthdir_x(spd, angle_to_check);
            ytarg = y+lengthdir_y(spd, angle_to_check);     
            if place_free(xtarg,ytarg) {
                //make_way_here(xtarg, ytarg)
				x = xtarg
				y = ytarg
                exit;       
            }   
        }
    }
}