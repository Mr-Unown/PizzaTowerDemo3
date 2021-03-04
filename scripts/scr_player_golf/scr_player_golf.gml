grav = 0.5
move = (key_left + key_right)
if (!grounded)
{
    if (movespeed > 0)
        movespeed -= 0.1
    else
        movespeed = 0
    if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
        hsp = (movespeed * xscale)
    else if place_meeting(x, (y + 1), obj_railh)
        hsp = ((movespeed * xscale) - 5)
    else if place_meeting(x, (y + 1), obj_railh2)
        hsp = ((movespeed * xscale) + 5)
}
if grounded
{
    jumpstop = 0
    anger = 100
    if (sprite_index != spr_punch)
    {
        if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
            hsp = (movespeed * xscale)
        else if place_meeting(x, (y + 1), obj_railh)
            hsp = ((movespeed * xscale) - 5)
        else if place_meeting(x, (y + 1), obj_railh2)
            hsp = ((movespeed * xscale) + 5)
    }
    if (movespeed > 0)
        movespeed -= 0.1
    else
        movespeed = 0
}
if (sprite_index == spr_haulingstart && floor(image_index) == (image_number - 1))
    sprite_index = spr_haulingidle
if ((sprite_index == spr_haulingjump && floor(image_index) == (image_number - 1)) || ((!grounded) && (sprite_index == spr_haulingwalk || sprite_index == spr_haulingidle)))
    sprite_index = spr_haulingfall
if (grounded && vsp > 0 && (sprite_index == spr_haulingfall || sprite_index == spr_haulingjump))
    sprite_index = spr_haulingland
if (sprite_index == spr_haulingland && floor(image_index) == (image_number - 1))
    sprite_index = spr_haulingidle
if (sprite_index == spr_punch && floor(image_index) == (image_number - 1))
{
    state = 0
    sprite_index = spr_idle
    landAnim = 0
}
image_speed = 0.35
if (key_down && grounded)
{
    state = 66
    landAnim = 0
    crouchAnim = 1
    image_index = 0
    idle = 0
    with (baddiegrabbedID)
    {
        hsp = 0
        thrown = 0
        state = 98
        movespeed = 0
        intensity = 0
        grabbed = 0
        thrown = 0
        hit = 0
        poweringup = 0
        going_up = 1
    }
}
if (move != 0 && (floor(image_index) == 3 || floor(image_index) == 8) && steppy == 0)
    steppy = 1
if (move != 0 && floor(image_index) != 3 && floor(image_index) != 8)
    steppy = 0
