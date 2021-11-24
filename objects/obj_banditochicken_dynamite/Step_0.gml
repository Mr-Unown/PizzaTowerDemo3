hsp = (image_xscale * movespeed)
mask_index = spr_player_mask
if (scr_solid(x, (y + 1)) && vsp > 0)
{
    vsp = -5
    if (movespeed > 0)
        movespeed -= 1
}
if scr_solid(x + sign(hsp) , y) || place_meeting(x + sign(hsp), y, obj_baddie)
    image_xscale *= -1
if place_meeting(x, y, obj_player)
{
    with (instance_create(x, y, obj_banditochicken_projectile))
    {
        vsp = -9
        image_xscale = -1
        hsp = -4
    }
    with (instance_create(x, y, obj_banditochicken_projectile))
    {
        vsp = -9
        image_xscale = 1
        hsp = 4
    }
    instance_destroy()
}
if (countdown <= 0)
{
    with (instance_create(x, y, obj_banditochicken_projectile))
    {
        vsp = -9
        image_xscale = -1
        hsp = -4
    }
    with (instance_create(x, y, obj_banditochicken_projectile))
    {
        vsp = -9
        image_xscale = 1
        hsp = 4
    }
    instance_destroy()
}
countdown--
scr_collide();


