/// Characters are deathable
// each attribute a character has, also has modifiers
//		these modifiers:
//			add - sum with attribute
//			mult - multiply sum
// Without needing to modify the raw attribute
//		handled in step

event_inherited()

alliance = 1

// strength
strength = 2
strength_modmult = 1
strength_modadd = 0
// constitution
constitution = 2
constitution_modmult = 1
constitution_modadd = 0
// intellect
intellect = 2
intellect_modmult = 1
intellect_modadd = 0
// willpower
willpower = 2
willpower_modmult = 1
willpower_modadd = 0
// luck
luck = 2
luck_modmult = 1
luck_modadd = 0
// agility (movement)
agility = 2
agility_modmult = 1
agility_modadd = 0

//track movement
movement_moved = 0
movement_spd = 0
movement_dir = 0
attack_dir = 0

// attacking
is_attacking = false
current_attack = noone
my_attacks = ds_list_create()
main_attack = noone
second_attack = noone
third_attack = noone

all_offcd = true
main_offcd = true
second_offcd = true
third_offcd = true

show_debug_message("Entity SPAWNED: " + string(id))