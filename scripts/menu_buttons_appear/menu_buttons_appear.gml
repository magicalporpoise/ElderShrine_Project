/// menu_buttons_appear(bool)
{
	for(var i = 0 ; i < ds_list_size(menu_buttons) ; i++)
	{
		var b = ds_list_find_value(menu_buttons, i)
		with b
		{
			visible = argument0
		}
	}
}