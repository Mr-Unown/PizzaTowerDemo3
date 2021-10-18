created = false
//Imposter
if (ds_list_find_index(global.saveroom, id) != -1) && !(ds_list_find_index(global.baddieroom, id) != -1)
    {
		with (instance_create(x, y, content))
		{
			image_xscale = other.image_xscale
			creatorid = other.id
			other.created = true
		}
	}
if (ds_list_find_index(global.baddieroom, id) != -1)
	instance_destroy()