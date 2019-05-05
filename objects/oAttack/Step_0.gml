/// handle the attack, 
// then destroy
if not instance_exists(my_attacker) then instance_destroy(self)
else
{
	for(var i=0 ; i < ds_list_size(people_hit) ; i++)
	{
		var person_hit = ds_list_find_value(people_hit, i)
		show_debug_message("      Character " + string(person_hit.id) +": Hit with " + string(id))
		handle_attack(self, person_hit)
	}

	instance_destroy(self)
}