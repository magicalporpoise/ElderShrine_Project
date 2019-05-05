/// @desc roll_dice(amt, mn, mx)
// @arg amt
// @arg mn
// @arg mx

var amt = argument0
var mn = argument1
var mx = argument2

// track sum
var sum = 0

for (var d = 0 ; d < amt ; d++)
{
	sum += irandom_range(mn, mx)	
}

return sum