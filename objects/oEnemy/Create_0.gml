/// basics for enemy AI
// state
// view of player
// aggro to player

// Inherit the parent event
event_inherited();

alliance = self.object_index
// distances at which this will
// see player or aggro to player
player_see = 200
player_aggro = 200
attack_player = false

// current state
current_state = ai_wander

// movement deciders
move_angle = 0
move_speed = 5

