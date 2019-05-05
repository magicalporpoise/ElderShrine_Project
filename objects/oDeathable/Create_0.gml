/// Deathable objects can receive attacks
// once a certain amount of damage has been taken,
// they are Destroyed or handled

// alliance
alliance = 0
// amount of damage needed to destroy
hit_points_max = 15
hit_points = hit_points_max
wit_points_max = 30
wit_points = 0

effective_strength =1
effective_constitution =1
effective_intellect =1
effective_willpower =1
effective_luck =1
effective_agility =1

pain_dealt = 0
stress_dealt = 0
last_hit_by = noone

name = ""

dead = false

// list of attacks and effects
incoming_attacks = ds_list_create()
incoming_effects = ds_list_create()