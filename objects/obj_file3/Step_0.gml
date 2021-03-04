if sprite_index != spr_file3confirm
{
	if (obj_mainmenuselect.optionselected == 2)
		sprite_index = spr_file3
	else
		sprite_index = spr_file3empty
}
if sprite_index = spr_file3confirm && (floor(image_index) == (image_number - 1))
	image_speed = 0
else
	image_speed = 0.35
