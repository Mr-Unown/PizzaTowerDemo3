//Spawn Box
if (ds_list_find_index(global.baddieroom, id) == -1 && important == 0)
{
    with (instance_create(x, y, obj_treasureguybox))
    {
        vsp = -3
		image_xscale = other.image_xscale
        mask_index = other.mask_index
        for (var i = 0; i < array_length(other.content_arr); i++)
			content_arr[i] = other.content_arr[i]
        current_arr = 0
        alarm[0] = 30
    }
}

// Inherit the parent event
event_inherited();

