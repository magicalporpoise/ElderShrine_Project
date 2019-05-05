/// set_up_level

var player = instance_nearest(0, 0, oPlayerCharacter)
var shrine = instance_nearest(0, 0, oShrine)
var num_enemies = shrine.shrine_next_level
var xx, yy, rangemin, rangemax, rot
var enemy
if player.level == 0
{
	show_debug_message("SETTING UP LEVEL 0")
	rot = 360 div num_enemies
	// 8 dudes....
	for(var i = 0 ; i < num_enemies ; i++)
	{
		xx = shrine.x+lengthdir_x(300, i*rot)
		yy = shrine.y+lengthdir_y(300, i*rot)
		enemy = instance_create_layer(xx, yy, "Instances", oDeathable)		
	}
}
else //if player.level == 1
{
	show_debug_message("SETTING UP LEVEL 1: enemies=" +string(num_enemies))
	rangemin=300
	rangemax=600
	// simple enemies
	rot = 360 div num_enemies
	for(var i = 0 ; i < num_enemies ; i++)
	{
		//var rand = random_range(rangemin, rangemax)
		xx = shrine.x+lengthdir_x(400, i*rot)
		yy = shrine.y+lengthdir_y(400, i*rot)
		enemy = instance_create_layer(xx, yy, "Instances", oEnemyGhostSmall)
	}
}
/*else
{
	// FULL RANDOM RELATIVE TO PLAYER	
	rangemin=300
	rangemax=650
	// simple enemies
	var enemy_choices = [oEnemyGhostSmall, oEnemyGhostBig, oEnemyHellBeast, oEnemyHorse]
	rot = 360 div num_enemies
	for(var i = 0 ; i < num_enemies ; i++)
	{
		var rand = random_range(rangemin, rangemax)
		xx = shrine.x+lengthdir_x(rand, i*rot)
		yy = shrine.y+lengthdir_y(rand, i*rot)
		enemy = enemy_choices[irandom_range(0, array_length_1d(enemy_choices)-1)];
		enemy = instance_create_layer(xx, yy, "Instances", enemy)
	}
}*/