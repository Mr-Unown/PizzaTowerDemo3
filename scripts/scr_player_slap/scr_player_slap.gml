move = (key_left + key_right)
landAnim = 0
dir = xscale
if (floor(image_index) == 1 && (!instance_exists(obj_slaphitbox2)))
{
    with (instance_create(x, y, obj_slaphitbox2))
    {
        playerid = other.id
        image_xscale = other.xscale
        sprite_index = spr_swordhitbox
    }
}
if grounded
{
    if (movespeed > 0)
        movespeed -= 0.1
    if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
        hsp = (xscale * movespeed)
    else if place_meeting(x, (y + 1), obj_railh)
        hsp = ((xscale * movespeed) - 5)
    else if place_meeting(x, (y + 1), obj_railh2)
        hsp = ((xscale * movespeed) + 5)
}
else if (!grounded)
{
    if (move != 0 && xscale != move)
    {
        if (movespeed >= 10)
            movespeed /= 2
        else
            movespeed = 1
        if (move != 0)
            xscale = move
        if grounded
        {
            sprite_index = spr_machslidestart
            scr_soundeffect(62)
            image_index = 0
        }
        turnbuffer = 50
    }
    hsp = (move * movespeed)
}
if (grounded && move == 0)
    hsp = 0
landAnim = 0
if (floor(image_index) == (image_number - 1))
{
    if (move != 0 && movespeed >= 6)
        state = 70
    else
        state = 0
}
if ((!instance_exists(obj_slidecloud)) && grounded && movespeed > 5)
{
    with (instance_create(x, y, obj_slidecloud))
        image_xscale = other.xscale
}
image_speed = 0.4
turnbuffer = 0
