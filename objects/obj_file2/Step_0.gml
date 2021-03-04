if sprite_index != spr_file2confirm
{
	if (obj_mainmenuselect.optionselected == 1)
		sprite_index = spr_file2
	else 
		sprite_index = spr_file2empty
}
if sprite_index = spr_file2confirm && (floor(image_index) == (image_number - 1))
	image_speed = 0
else
	image_speed = 0.35
