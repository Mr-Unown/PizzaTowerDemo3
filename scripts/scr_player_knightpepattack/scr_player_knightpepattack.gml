move = (key_left + key_right)
alarm[5] = 2
alarm[7] = 60
hurted = 1
if !grounded
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
		
	//Float for a while
	if vsp < 0
	{
		movespeed = approach(movespeed,0,0.2)
		vsp = clamp(vsp,-5,0)
	}
	else
	{
		vsp = clamp(approach(vsp,18,0.25),15,18)
		if !instance_exists(superslameffectid)
		{
			with (instance_create(x, y, obj_superslameffect))
			{
				playerid = other.object_index
				other.superslameffectid = id
			}
		}
	}
	knightpoundbuffer = approach(knightpoundbuffer,100,1)
}
#region Land
//Normal
if (sprite_index == spr_knightpepattack && !place_meeting(x,y + 1,obj_destructibles) && scr_solid(x,y+1) && !scr_slope() && vsp > 0)
{
	knightpoundbuffer = 0
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
    image_index = 0
    freefallstart = 0
    momemtum = 0
    scr_soundeffect(15)
	with instance_create(x, y, obj_landcloud)
	{
		playerid = other.id
		image_xscale = other.xscale
	}	
	movespeed = clamp(movespeed,0,3)
    sprite_index = spr_knightpepland
	state = states.knightpep
}
//Slope
if scr_slope() && vsp > 0
{
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
	scr_soundeffect(15)
	knightpoundbuffer = 0
	var maxyy = 5
	knightslidespeed = clamp((y - knightmaxy),0,maxyy);
    with (instance_place(x, (y + 1), obj_slope))
        other.xscale = (-sign(image_xscale))
    state = 18
    sprite_index = spr_knightpepdownslope
}
#endregion

image_speed = 0.35
