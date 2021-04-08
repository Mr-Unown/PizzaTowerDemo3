if grounded
{
    if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
        hsp = 0
    else if place_meeting(x, (y + 1), obj_railh)
        hsp = -5
    else if place_meeting(x, (y + 1), obj_railh2)
        hsp = 5
    if (movespeed > 0)
        movespeed -= 0.1
}
landAnim = 0
if (floor(image_index) == (image_number - 1) && sprite_index == spr_playerV_dynamitethrow)
{
    if (key_attack && hsp != 0)
        state = 70
    else
        state = 0
}
image_speed = 0.4
