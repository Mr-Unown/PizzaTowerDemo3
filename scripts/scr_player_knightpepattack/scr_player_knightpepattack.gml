if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
    hsp = (move * movespeed)
else if place_meeting(x, (y + 1), obj_railh)
    hsp = ((move * movespeed) - 5)
else if place_meeting(x, (y + 1), obj_railh2)
    hsp = ((move * movespeed) + 5)
alarm[5] = 2
alarm[7] = 60
hurted = 1
if instance_exists(obj_swordhitbox)
{
    if (obj_swordhitbox.bumpeffect == 0)
        hsp = (xscale * movespeed)
    else
        hsp = ((-xscale) * movespeed)
}
if (movespeed >= 0)
    movespeed -= 0.2
if (floor(image_index) == (image_number - 1))
{
    image_index = 0
    sprite_index = spr_knightpep_idle
    state = 24
}
image_speed = 0.35
