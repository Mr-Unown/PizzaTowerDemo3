if global.timeattack = true && (ds_list_find_index(global.saveroom, id) != -1) 
{
	if (global.panic == 0)
		image_alpha = 0.43
	else
		image_alpha = 1
}
else
	image_alpha = 0