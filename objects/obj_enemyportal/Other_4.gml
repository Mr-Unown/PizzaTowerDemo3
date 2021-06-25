created = false

if (ds_list_find_index(global.saveroom, id) != -1) && !(ds_list_find_index(global.baddieroom, id) != -1)
    alarm[0] = 1
if (ds_list_find_index(global.baddieroom, id) != -1)
	instance_destroy()