if ((character == "P" || character == "N") && key_slap2)
{
    bufferslap = 0
    movespeed = 8
    if (!grounded)
        vsp = -5
    image_index = 0
    if (character == "P")
        sprite_index = spr_player_faceplant
    else if (character == "N")
    {
        sprite_index = spr_playerN_spin
        scr_soundeffect(126)
    }
	else
	{
		sprite_index = spr_playerPZ_faceplant
	}
	
    state = 111
    image_speed = 0.5
    with (instance_create(x, y, obj_jumpdust))
        image_xscale = other.xscale
    if (!instance_exists(crazyruneffectid))
    {
        with (instance_create(x, y, obj_crazyrunothereffect))
        {
            playerid = other.object_index
            other.crazyruneffectid = id
        }
    }
}
if (character != "S")
{
    if (windingAnim < 2000)
        windingAnim++
}
if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
    hsp = (xscale * movespeed)
else if place_meeting(x, (y + 1), obj_railh)
    hsp = ((xscale * movespeed) - 5)
else if place_meeting(x, (y + 1), obj_railh2)
    hsp = ((xscale * movespeed) + 5)
mach2 = 100
momemtum = 1
move = (key_right + key_left)
move2 = (key_right2 + key_left2)
if (fightball == 1 && global.coop == 1)
{
    if (object_index == obj_player1)
    {
        x = obj_player2.x
        y = obj_player2.y
    }
    if (object_index == obj_player2)
    {
        x = obj_player1.x
        y = obj_player1.y
    }
}
if (movespeed < 24 && move == xscale)
{
	if (character == "N" && pogo = false)
        movespeed += 0.2
    else
        movespeed += 0.1
    if ((!instance_exists(crazyruneffectid)) && grounded)
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
crouchslideAnim = 1
if ((!key_jump2) && jumpstop == 0 && vsp < 0.5)
{
    vsp /= 10
    jumpstop = 1
}
/*
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
*/
if (grounded && vsp > 0)
    jumpstop = 0
if (!grounded)
{
    machhitAnim = 0
    machhitAnimtimer = 500
}
if (machhitAnim == 1)
{
    if (machhitAnimtimer > 0)
        machhitAnimtimer -= 5
    if (machhitAnimtimer <= 0)
    {
        machhitAnimtimer = 500
        machhitAnim = 0
    }
}
if (input_buffer_jump < 8 && grounded && (!(move == 1 && xscale == -1)) && (!(move == -1 && xscale == 1)))
{
    scr_soundeffect(sfx_jump)
    if (sprite_index != spr_fightball1 && sprite_index != spr_fightball2)
    {
        image_index = 0
        sprite_index = spr_mach3jump
    }
    if (character == "P")
        vsp = -11
    else
        vsp = -13
}
if (fightball == 0) 
{
    if (sprite_index == spr_mach3jump && floor(image_index) == (image_number - 1)) 
        sprite_index = spr_mach4
    if (sprite_index == spr_mach3dashpad && floor(image_index) == (image_number - 1))
        sprite_index = spr_mach4		
    if (floor(image_index) == (image_number - 1) && (sprite_index == spr_rollgetup || sprite_index == spr_mach3hit))
        sprite_index = spr_mach4
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_machhit && machhitAnim == 0)
    {
        flash = 1
        sprite_index = spr_mach4
    }
    if (sprite_index == spr_mach2jump && grounded && vsp > 0)
        sprite_index = spr_mach4
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_playerV_spinjump1)
        sprite_index = spr_playerV_spinjump2
    if (movespeed > 20 && sprite_index != spr_crazyrun)
    {
        flash = 1
        sprite_index = spr_crazyrun
    }
    else if (movespeed <= 20 && sprite_index == spr_crazyrun)
        sprite_index = spr_mach4
}
if (sprite_index == spr_crazyrun && (!instance_exists(crazyruneffectid)))
{
    with (instance_create(x, y, obj_crazyrunothereffect))
    {
        playerid = other.object_index
        other.crazyruneffectid = id
    }
}
if (sprite_index == spr_mach4 || (sprite_index == spr_fightball1 || sprite_index == spr_fightball2))
    image_speed = 0.4
if (sprite_index == spr_crazyrun)
    image_speed = 0.75
if (sprite_index == spr_rollgetup || sprite_index == spr_mach3hit)
    image_speed = 0.4
if (sprite_index == spr_player_machhit)
    image_speed = 0.65
if key_jump
    input_buffer_jump = 0
if (key_up && character != "V") && !place_meeting(x, y, obj_dashpad)
{
    sprite_index = spr_superjumpprep
    state = 65
    hsp = 0
    image_index = 0
    superjumpprepsnd = audio_play_sound(sfx_superjumpprep, 1, false)
    audio_sound_gain(superjumpprepsnd, (1 * global.soundeffectsvolume), 0)
}
if (grounded && key_up && character == "V") && !place_meeting(x, y, obj_dashpad) 
{
    sprite_index = spr_superjumpprep
    state = 65
    vsp = -3
    image_index = 0
    superjumpprepsnd = audio_play_sound(sfx_superjumpprep, 1, false)
    audio_sound_gain(superjumpprepsnd, (1 * global.soundeffectsvolume), 0)
}
if ((((!key_attack) && fightball == 0 && grounded && character != "S") || (character == "S" && (move == 0 || move != xscale) && turnbuffer >= 50 && grounded && fightball == 0))) && !place_meeting(x, y, obj_dashpad) && mach3dash = false
{
    sprite_index = spr_machslidestart
    scr_soundeffect(65)
    state = 71
    image_index = 0
}
if (move == (-xscale) && grounded && character != "S" && fightball == 0) && !place_meeting(x, y, obj_dashpad) && mach3dash = false
{
    scr_soundeffect(62)
    sprite_index = spr_mach3boost
    state = 71
    image_index = 0
}
if (key_down && fightball == 0 && (!place_meeting(x, y, obj_dashpad))) 
{
    with (instance_create(x, y, obj_jumpdust))
        image_xscale = other.xscale
	movespeed = clamp(movespeed,12,15)
    flash = 0
    state = 37
    vsp = 10
}
//Hitwall
if (((!grounded) && scr_solid(x + hsp,y) && (!place_meeting((x + hsp), y, obj_destructibles)) && (!place_meeting((x + sign(hsp)), y, obj_slope))) || (grounded && (scr_solid(x + sign(hsp),y - 2)  && !place_meeting(x + sign(hsp),y,obj_slope)) && (!place_meeting((x + hsp), y, obj_destructibles)) && (!place_meeting((x + hsp), y, obj_metalblock)) && scr_slope() ) )
{
    wallspeed = clamp(movespeed,12, 24)
    state = 17
}
else if (grounded && scr_solid((x + sign(hsp)), y) && (!scr_slope() && scr_solid(x + sign(hsp),y - 2)) && (!place_meeting((x + sign(hsp)), y, obj_metalblock)) && (!place_meeting((x + sign(hsp)), y, obj_destructibles))) 
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

if ((!instance_exists(dashcloudid)) && grounded)
{
    with (instance_create(x, y, obj_superdashcloud))
    {
        if (other.fightball == 1)
            instance_create(obj_player.x, obj_player.y, obj_slapstar)
        image_xscale = other.xscale
        other.dashcloudid = id
        if (place_meeting(other.x, (other.y + 1), obj_boilingwater) || place_meeting(other.x, (other.y + 1), obj_water)) && (!place_meeting(other.x, other.y, obj_water) && !place_meeting(other.x, other.y, obj_boilingwater))
            sprite_index = spr_waterdash
    }
}
if (key_taunt2 && fightball == 0)
{
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
if (!instance_exists(chargeeffectid))
{
    with (instance_create(x, y, obj_chargeeffect))
    {
        playerid = other.object_index
        other.chargeeffectid = id
    }
}
if (key_slap2 && character == "V")
{
    vsp = -5
    state = 39
    image_index = 0
    sprite_index = spr_playerV_airrevolver
    image_index = 0
    instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet)
    scr_soundeffect(14)
}
if (key_shoot2 && character == "V" && (!instance_exists(obj_vigidynamite)))
{
    vsp = -5
    state = 110
    image_index = 0
    sprite_index = spr_playerV_dynamitethrow
    with (instance_create(x, y, obj_vigidynamite))
    {
        image_xscale = other.xscale
        movespeed = (other.movespeed + 4)
        vsp = -6
    }
}
if (key_slap2 && character == "S")
{
    suplexmove = 1
    vsp = -5
    scr_soundeffect(126)
    scr_soundeffect(33)
    sprite_index = spr_snick_jump
    state = 12
    image_index = 0
}
