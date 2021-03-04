if (grabbedby == 1)
    var player = 3
else if (grabbedby == 2)
    player = 4
if (obj_camera.zoom == 0 && shakebuffer > 0)
    shakebuffer--
if (shakebuffer <= 0)
    shake = 0
if (shake == 0)
{
    if (blowdirection == 3)
    {
        alarm[1] = 2
        shakebuffer = 2.5
        flash = 1
        hsp = (0 * blowintensity)
        vsp = (-25 * blowintensity)
        grav = 0.5
        state = 106
        hp -= 1
        with (instance_create(x, y, obj_bumpeffect))
            sprite_index = spr_parryeffect
        thrown = 1
    }
    else if (blowdirection == 2)
    {
        alarm[1] = 2
        shakebuffer = 2.5
        flash = 1
        hsp = (0 * blowintensity)
        vsp = (25 * blowintensity)
        grav = 0.5
        state = 106
        hp -= 1
        with (instance_create(x, y, obj_bumpeffect))
            sprite_index = spr_parryeffect
        thrown = 1
    }
    else if (blowdirection == 1)
    {
        alarm[1] = 2
        shakebuffer = 2.5
        flash = 1
        hsp = ((playerxscale * 25) * blowintensity)
        vsp = (-6 * blowintensity)
        grav = 0.5
        state = 106
        hp -= 1
        with (instance_create(x, y, obj_bumpeffect))
            sprite_index = spr_parryeffect
        thrown = 1
    }
    else if (blowdirection == "parry")
    {
        alarm[1] = 2
        shakebuffer = 2.5
        flash = 1
        hsp = ((playerxscale * 25) * blowintensity)
        vsp = (0 * blowintensity)
        grav = 0
        state = 106
        hp -= 1
        with (instance_create(x, y, obj_bumpeffect))
            sprite_index = spr_parryeffect
        thrown = 1
    }
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
}
sprite_index = stunfallspr
