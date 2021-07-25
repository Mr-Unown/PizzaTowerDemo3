hsp = 0
mach2 = 0
jumpAnim = 1
dashAnim = 1
landAnim = 0
moveAnim = 1
stopAnim = 1
crouchslideAnim = 1
crouchAnim = 0
machhitAnim = 0

move = (key_right + key_left)

vsp = 0
if key_up
vsp = -3
if key_down
vsp = 3


if windingAnim < 2000
windingAnim ++

//Movespeed
if (movespeed < 24 && move == xscale)
{
    movespeed += 0.1
    if (!instance_exists(crazyruneffectid))
    {
        with (instance_create(x, y, obj_crazyruneffect))
        {
            playerid = other.object_index
            other.crazyruneffectid = id
        }
    }
}
else if (movespeed > 12 && move != xscale)
    movespeed -= 0.1
hsp = (xscale * movespeed)

//Sprite
if movespeed > 20 && sprite_index != spr_jetpackcrazy 
{
	flash = 1
	sprite_index = spr_jetpackcrazy
}
else if movespeed <= 20 && sprite_index != spr_jetpack
{
	sprite_index = spr_jetpack
}
//Pogocancel
if key_attack2 && jetpacking = true
{
	jetpacking = false	
	sprite_index = spr_playerN_pogostart
	image_index = 0
	state = states.pogo
	pogomovespeed = movespeed
}
//Auto Parry
if (!instance_exists(parry_id))
{
    parry_id = instance_create(x, y, obj_autoparryhitbox)
    with (parry_id)
    {
		playerid = other.id
        image_xscale = other.xscale
	}
}
//Cancel into Spin
if key_jump2 && jetpacking = true
{
		jetpacking = false	
		scr_soundeffect(sfx_jump)
		scr_soundeffect(sfx_rollgetup)
		jumpstop = false
		vsp = -15
		state = 58
		sprite_index = spr_playerN_spinjump
		image_index = 0
		with instance_create(x,y,obj_jumpdust)
			image_xscale = other.xscale
}
//Effect
if (!instance_exists(chargeeffectid))
{
    with (instance_create(x, y, obj_chargeeffect))
    {
        playerid = other.object_index
        other.chargeeffectid = id
    }
}
//Image Speed
if (sprite_index == spr_jetpack)
    image_speed = 0.4
if (sprite_index == spr_jetpackcrazy)
    image_speed = 0.75
if jetpacking = true && key_down && !place_meeting(x, y, obj_dashpad) && grounded {
	sprite_index = spr_playerN_jetpackslide
    with (instance_create(x, y, obj_jumpdust))
        image_xscale = other.xscale
    flash = 0
    state = 37
    vsp = 10
}


if (scr_solid((x + sign(hsp)), y) && !(scr_slope() && !scr_solid(x + sign(hsp),y - 2)) && (!place_meeting((x + sign(hsp)), y, obj_metalblock)) && (!place_meeting((x + sign(hsp)), y, obj_destructibles))) 
{
	jetpacking = false	
    if (fightball == 0)
    {
        sprite_index = spr_hitwall
        scr_soundeffect(15)
        scr_soundeffect(16)
        with (obj_camera)
        {
            shake_mag = 20
            shake_mag_acc = (40 / room_speed)
        }
        hsp = 0
        image_speed = 0.35
        with (obj_baddie)
        {
            if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
            {
                stun = 1
                alarm[0] = 200
                ministun = 0
                vsp = -5
                hsp = 0
            }
        }
        flash = 0
        state = 72
        hsp = -2.5 * xscale
        vsp = -3
        mach2 = 0
        image_index = 0
        instance_create((x + 10 * xscale), (y + 10 ), obj_bumpeffect)
    }
    else if (fightball == 1)
    {
        with (obj_player)
        {
            sprite_index = spr_hitwall
            scr_soundeffect(15)
            scr_soundeffect(16)
            with (obj_camera)
            {
                shake_mag = 20
                shake_mag_acc = (40 / room_speed)
            }
            hsp = 0
            image_speed = 0.35
            with (obj_baddie)
            {
                if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
                {
                    stun = 1
                    alarm[0] = 200
                    ministun = 0
                    vsp = -5
                    hsp = 0
                }
            }
            flash = 0
            state = 72
            hsp = -2.5 * xscale
            vsp = -3
            mach2 = 0
            image_index = 0
             instance_create((x + 10 * xscale), (y + 10 ), obj_bumpeffect)
        }
        fightball = 0
    }
}

//Taunt
if key_taunt2 && jetpacking = true
{
	jetpacking = true
    scr_soundeffect(sfx_taunt)
    taunttimer = 20
    tauntstoredmovespeed = movespeed
    tauntstoredsprite = sprite_index
    tauntstoredstate = state
    state = 51
	if supertauntcharged = true && (character == "P" || character == "N")
	{
		image_index = 0
		sprite_index = choose(spr_supertaunt1,spr_supertaunt2,spr_supertaunt3,spr_supertaunt4)
	}
	else
	{
		image_index = irandom_range(0, sprite_get_number(spr_taunt))
		sprite_index = spr_taunt
	}
    with (instance_create(x, y, obj_taunteffect))
    {
        playerid = other.id
        baddie = 0
    }
	scr_baddietauntfakeout();	
}