if (playermode == 0)
{
    with (other.id)
    {
        effect = 2
        effectx = other.x
        effecty = other.y
    }
    image_xscale = other.image_xscale
    hsp = (other.image_xscale * 5)
    vsp -= 5
    grav = 0.35
    playermode = 1
    playerid = other.playerid
}

