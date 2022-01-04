if (other.state == states.handstandjump)
{
    instance_create((x + (other.xscale * 40)), y, obj_punchdust)
    with (other.id)
    {
        image_index = 0
        sprite_index = spr_haulingstart
        heavy = other.heavy
        state = states.grab
        baddiegrabbedID = other.id
    }
    playerid = other.object_index
	grabbedby = (playerid == obj_player1 ? 1 : 2)
    grabbed = 1
}

