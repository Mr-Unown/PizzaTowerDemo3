if (sprite_index == spr_doorvisited && global.panic == 0 && global.snickchallenge == 0)
{
    with (obj_player)
    {
        if (state == 61 && floor(image_index) == (image_number - 2))
        {
            other.sprite_index = spr_doorblockedclosing
            other.image_speed = 0.35
            other.image_index = 0
            ds_list_add(global.saveroom, other.id)
        }
    }
}


