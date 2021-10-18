if other.friendly = false {

with (other.id)
{
    var magnitude = abs(hsp)
    var vdirection = sign(hsp)
    if (x != other.x)
        vdirection = sign((x - other.x))
    hsp = (vdirection * magnitude)
    image_xscale = vdirection
    playermode = 1
    playerid = other.playerid
}
if (!collided)
    event_user(0)
}

