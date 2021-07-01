landAnim = 1
vsp += 0.15;
vsp = clamp(vsp,15,20);
move = (key_left + key_right)
if (!grounded)
{
    hsp = (move * movespeed)
    if (move != xscale && momemtum == 1 && movespeed != 0)
        movespeed -= 0.05
    if (movespeed == 0)
        momemtum = 0
    if ((move == 0 && momemtum == 0) || scr_solid((x + hsp), y))
    {
        movespeed = 0
        mach2 = 0
    }
    if (move != 0 && movespeed < 7)
        movespeed += 0.25
    if (movespeed > 7)
        movespeed -= 0.05
    if ((scr_solid((x + 1), y) && move == 1) || (scr_solid((x - 1), y) && move == -1))
        movespeed = 0
    if (dir != xscale)
    {
        mach2 = 0
        dir = xscale
        movespeed = 0
    }
    if (move == (-xscale))
    {
        mach2 = 0
        movespeed = 0
        momemtum = 0
    }
    if (move != 0)
        xscale = move
}

freefallsmash++
if (freefallsmash > 10 && (!instance_exists(superslameffectid)))
{
    with (instance_create(x, y, obj_superslameffect))
    {
        playerid = other.object_index
        other.superslameffectid = id
    }
}
if (grounded && (!input_buffer_jump < 8) && (!place_meeting(x, (y + 1), obj_destructibles)))
{
    scr_soundeffect(15)
    freefallsmash = 0
    if (shotgunAnim == 0)
        sprite_index = spr_bodyslamland
    else
        sprite_index = spr_shotgunjump2
    image_index = 0
    state = 77
    jumpAnim = 1
    jumpstop = 0
    with (obj_baddie)
    {
        if (grounded && shake != 1 && state != 109 && markedfordeath != 1 && point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0))))
        {
			state = 106
			if stunned < 60
				stunned = 60
			image_xscale *= -1
            vsp = -11
            hsp = 0
			momentum = 0
        }
    }
    with (obj_camera)
    {
        shake_mag = 10
        shake_mag_acc = (30 / room_speed)
    }
    combo = 0
    bounce = 0
	with instance_create(x, y, obj_landcloud)
	{
		playerid = other.id
		image_xscale = other.xscale
	}	
    freefallstart = 0
}
/*if (key_attack2) && character = "PZ" && !grounded && freefallsmash > 10
{		
        if (move != 0)
            xscale = move
        movespeed = 10
        machhitAnim = 0
        state = 70
        flash = 1
		vsp = -2
        flash = 1
        sprite_index = spr_mach2jump
        with (instance_create(x, y, obj_jumpdust))
            image_xscale = other.xscale
}*/
image_speed = 0.35

if instance_exists(obj_superslameffect) && key_attack && (character != "N" && pogo = false)
{
vsp = -2
movespeed = 10
state = states.mach2
flash = 1
sprite_index = spr_mach2jump
instance_create(x, y, obj_jumpdust)
scr_soundeffect(sfx_rollgetup)
}
