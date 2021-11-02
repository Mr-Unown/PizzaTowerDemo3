if (playermode == 0)
{
    with (other.id)
    {
        effect = 2
        effectx = other.x
        effecty = other.y
    }
    var current_hspd = abs(hsp)
    var _dir = sign(hsp)
    if (x != other.x)
        _dir = sign((x - other.x))
    hsp = (_dir * current_hspd)
    vsp -= 3
    playermode = 1
    playerid = other.playerid
}

