if global.panic = 0 && global.snickchallenge = 0 && (ds_list_find_index(global.saveroom, id) == -1)
{
    with (obj_player)
    {
        if (state == 61 && floor(image_index) >= (image_number - 2))
        {
            other.sprite_index = spr_doorblockedclosing
            other.image_speed = 0.35
            other.image_index = 0
            ds_list_add(global.saveroom, other.id)
        }
		else if state = 61
		{
			other.sprite_index = spr_doorvisited
		}
    }
}


