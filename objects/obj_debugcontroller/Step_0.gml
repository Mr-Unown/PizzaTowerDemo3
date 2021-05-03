/// @description activity check


if active = true
{
	if keyboard_check_pressed(vk_f5)
		active = false
		
	if keyboard_check(vk_anykey) && inputbuffer = 0
	{
		input += keyboard_string
		keyboard_string = ""
		inputbuffer = inputmax
	}
	
	if keyboard_check(vk_backspace) && deletebuffer = 0
	{
		input = string_delete(input, string_length(input), 1)
		deletebuffer = deletemax
	}
}
else if keyboard_check_pressed(vk_f5)
{
	input = ""
	keyboard_string = ""
	active = true
}