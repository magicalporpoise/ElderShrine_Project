/// upgrade_buttons_appear(bool)
{
	for(var i = 0 ; i < ds_list_size(upgrade_buttons) ; i++)
	{
		var b = ds_list_find_value(upgrade_buttons, i)
		with b
		{
			visible = argument0
		}
	}
}