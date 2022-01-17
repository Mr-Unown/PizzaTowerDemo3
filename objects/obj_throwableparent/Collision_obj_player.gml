if (other.state == states.handstandjump)
{
    instance_create((x + (other.xscale * 40)), y, obj_punchdust)
    with (other.id)
    {
        image_index = 0
        sprite_index = spr_haulingstart
        heavy = 0
        state = states.grab
        baddiegrabbedID = other.id
    }
    playerid = other.object_index
	grabbedby = (playerid == obj_player1 ? 1 : 2)
    grabbed = 1
}
else if (other.state == states.ratmount && sprite_index == spr_gustavo_dash)
{
    instance_create((x + (other.xscale * 40)), y, obj_punchdust)
    with (other.id)
    {
        image_index = 0
        sprite_index = spr_gustavo_hauling
        heavy = 0
        baddiegrabbedID = other.id
    }
    playerid = other.object_index
	grabbedby = (playerid == obj_player1 ? 1 : 2)
    grabbed = 1
}

