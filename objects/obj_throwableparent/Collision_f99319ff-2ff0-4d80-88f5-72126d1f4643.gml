if (other.state == 22)
{
    instance_create((x + (other.xscale * 40)), y, obj_punchdust)
    with (other.id)
    {
        image_index = 0
        sprite_index = spr_haulingstart
        heavy = 0
        state = 46
        baddiegrabbedID = other.id
    }
    playerid = other.object_index
    grabbed = 1
}

