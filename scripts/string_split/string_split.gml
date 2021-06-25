argument0 += " "
var currentstr = ""
var list = ds_list_create()

for (var i = 1; i < (string_length(argument0) + 1); i++)
{
	var char = string_char_at(argument0, i)
	if char != argument1
		currentstr += char
	else
	{
		ds_list_add(list, currentstr)
		currentstr = ""
	}
}

//for(var i = 0; i < ds_list_size(list); i++)
//	show_debug_message(ds_list_find_value(list, i))
return list