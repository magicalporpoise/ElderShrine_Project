/// randomize_abilities
// from within oAbilityRandomizer
{
	// make new character object
	var char = instance_create_layer(x, y, "Instances", oPlayerCharacter)

	var ab1 = wheel_one[irandom(array_length_1d(wheel_one)-1)]
	var ab2 = wheel_two[irandom(array_length_1d(wheel_two)-1)]
	//var ab3 = wheel_three[irandom(array_length_1d(wheel_three)-1)]
	var ab3 = -12

	with char
	{
		main_attack = instance_create_layer(x, y, "Instances", ab1)
		second_attack = instance_create_layer(x, y, "Instances", ab2)
		//third_attack = instance_create_layer(x, y, "Instances", ab3)
		
		// add to list
		ds_list_add(my_attacks, main_attack)
		ds_list_add(my_attacks, second_attack)
		//ds_list_add(my_attacks, third_attack)
		
		
		// set alliance
		with main_attack
		{
			my_attacker = other	
		}
		with second_attack
		{
			my_attacker = other	
		}
		/*with third_attack
		{
			my_attacker = other	
		}*/
		
		// set name
		name = main_attack.name + second_attack.name// + third_attack.name
	}
	
	return char
	
}