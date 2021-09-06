
if (other.object_index == obj_spitcheesespike || other.object_index == obj_robotknife)
{
    with (other.id)
    {
        if (playermode == 0)
        {
            var magnitude = abs(hsp)
            var vdirection = sign(hsp)
            if (x != other.x)
                vdirection = sign((x - other.x))
            hsp = (vdirection * magnitude)
            if (y >= other.y)
                vsp -= 3
            image_xscale = vdirection
            playermode = 1
            playerid = other.playerid
            if (object_index == obj_robotknife)
                grav = 0.35
        }
    }
}
if (!collided)
    event_user(0)


