if (momemtum == 0)
    hsp = (move * movespeed)
else
    hsp = (xscale * movespeed)
if (dir != xscale)
{
    dir = xscale
    movespeed = 2
    facehurt = 0
}
if (move != xscale)
    movespeed = 2
move = (key_left + key_right)
if (movespeed == 0)
    momemtum = 0
if scr_solid((x + hsp), y)
{
    movespeed = 0
    mach2 = 0
}
if (move != 0 && movespeed < 6)
    movespeed += 0.5
if (movespeed > 6)
    movespeed -= 0.1
if ((scr_solid((x + 1), y) && move == 1) || (scr_solid((x - 1), y) && move == -1))
    movespeed = 0
if (dir != xscale)
    dir = xscale
landAnim = 1
if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
{
    vsp /= 10
    jumpstop = 1
}
if (ladderbuffer > 0)
    ladderbuffer--
if (scr_solid(x, (y - 1)) && jumpstop == 0 && jumpAnim == 1)
{
    vsp = grav
    jumpstop = 1
}
if (grounded && input_buffer_jump < 8 && (!key_down) && (!key_attack) && vsp > 0 && (!(sprite_index == spr_facestomp || sprite_index == spr_freefall)))
{
    scr_soundeffect(0)
    sprite_index = spr_jump
    if (shotgunAnim == 1)
        sprite_index = spr_shotgunjump
    instance_create(x, y, obj_highjumpcloud2)
    stompAnim = 0
    if (character == "P")
        vsp = -11
	else if (character == "N" && pogo = true)
		vsp = -9			
    else
        vsp = -13
    state = 58
    jumpAnim = 1
    jumpstop = 0
    image_index = 0
    movespeed = 2
    freefallstart = 0
    doublejump = 0
}
if (grounded && vsp > 0 && (!key_attack))
{
    doublejump = 0
    scr_soundeffect(29)
    if key_attack
        landAnim = 0
    input_buffer_secondjump = 0
    state = 0
    jumpAnim = 1
    jumpstop = 0
    image_index = 0
    freefallstart = 0
    movespeed = 2
}

//dougie floating
if character = "D"
{
	if vsp > -1 && !grounded
		floatbuffer = true
	if floatbuffer = true && key_jump2 && floattimer > 0
	{
		vsp = 0
		floattimer--
	}
}



if key_jump
    input_buffer_jump = 0
if (character != "S")
{
    if (vsp > 5)
        fallinganimation++
    if (fallinganimation >= 40 && fallinganimation < 80) && sprite_index != spr_playerN_spinjump
        sprite_index = spr_facestomp
    if (fallinganimation >= 80) && sprite_index != spr_playerN_spinjump
        sprite_index = spr_freefall
}
if (stompAnim == 0)
{
    if (jumpAnim == 1)
    {
        if (floor(image_index) == (image_number - 1))
            jumpAnim = 0
    }
    if (jumpAnim == 0)
    {
		if (sprite_index == spr_player_shoryumineken)
			sprite_index = spr_player_shoryukenend
        if (sprite_index == spr_playerN_doublejump)
            sprite_index = spr_playerN_doublejumpfall		
        if (sprite_index == spr_airdash1)
            sprite_index = spr_airdash2
        if (sprite_index == spr_shotgunjump)
            sprite_index = spr_shotgunfall
        if (sprite_index == spr_jump)
            sprite_index = spr_fall
        if (sprite_index == spr_player_Sjumpstart)
            sprite_index = spr_player_Sjump
        if (sprite_index == spr_player_shotgunjump1)
            sprite_index = spr_player_shotgunjump2
        if (sprite_index == spr_shotgun_shootair)
            sprite_index = spr_shotgun_fall
        if (sprite_index == spr_playerV_superjump)
            sprite_index = spr_fall
        if (sprite_index == spr_player_jugglebash)
            sprite_index = spr_fall
		if (sprite_index = spr_grabcancelair)
			sprite_index = spr_fall
    }
}
if (stompAnim == 1)
{
    if (sprite_index == spr_stompprep && floor(image_index) == (image_number - 1))
        sprite_index = spr_stomp
}
if (key_down && sprite_index != spr_player_jugglebash)
{
    if (shotgunAnim == 0 || (character == "V" && character == "S"))
    {
        image_index = 0
        state = 92
        sprite_index = spr_bodyslamstart
        if (character == "P")
            vsp = -5
        else
            vsp = -7
    }
    else if (character != "V" && character != "S")
    {
        scr_soundeffect(14)
        image_index = 0
        state = 92
        sprite_index = spr_shotgunjump1
        vsp = -5
        if (character == "P")
        {
            with (instance_create((x + 30), (y + 60), obj_shotgunbullet))
            {
                playerid = other.id
                sprite_index = spr_shotgunbullet_down
                spdh = -10
                spd = 0
                created = 1
            }
            with (instance_create((x + 30), (y + 60), obj_shotgunbullet))
            {
                playerid = other.id
                sprite_index = spr_shotgunbullet_down
                spdh = -10
                spd = 5
                created = 1
            }
            with (instance_create((x + 30), (y + 60), obj_shotgunbullet))
            {
                playerid = other.id
                sprite_index = spr_shotgunbullet_down
                spdh = -10
                spd = -5
                created = 1
            }
        }
    }
}
if (move != 0)
    xscale = move
image_speed = 0.35
if (grounded && (sprite_index == spr_facestomp || sprite_index == spr_freefall))
{
    with (obj_baddie)
    {
        if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
        {
            vsp = -7
            hsp = 0
        }
    }
    with (obj_camera)
    {
        shake_mag = 10
        shake_mag_acc = (30 / room_speed)
    }
    scr_soundeffect(15)
    image_index = 0
    sprite_index = spr_freefallland
    state = 77
}
if (key_slap2 && suplexmove = 0 && (character = "P" || character = "PZ" || character = "N" || (character = "D" && spellselect = 2)))
{
	if key_up && (character = "P" || character = "PZ" )&& doublejump = 0
	{
		suplexmove = 1		
		suplexdashsnd = audio_play_sound(sfx_suplexdash, 1, false)
		audio_sound_gain(suplexdashsnd, (1 * global.soundeffectsvolume), 0)		
		doublejump = 1
		scr_soundeffect(sfx_jump)
		scr_soundeffect(sfx_rollgetup)
		jumpstop = 1
		jumpAnim = 1
		if movespeed < 3
		movespeed = 3
		momemtum = 1
		vsp = -8
		state = 58
		sprite_index = spr_player_shoryumineken		
		image_index = 0
	}
	else
	{
		suplexmove = 1
		suplexdashsnd = audio_play_sound(sfx_suplexdash, 1, false)
		audio_sound_gain(suplexdashsnd, (1 * global.soundeffectsvolume), 0)
		state = 22
		image_index = 0
		if character != "PZ" {
			vsp = -4
			sprite_index = spr_suplexdashjumpstart
		}
		else
			sprite_index = spr_suplexdash
		if (character == "P"|| character = "D" || character = "PZ")
	        movespeed = 6
	    else
			movespeed = 4
	}
}
//Breakdance
if (key_shoot2 && shotgunAnim == 0) && (!key_down) && character != "V" && character != "D"
{
	breakdancebuffer = 50
    scr_soundeffect(sfx_breakdance)
	movespeed = 10
	vsp = -4
    state = states.breakdance
	with instance_create(x, y, obj_dashcloud2)
       image_xscale = other.xscale
    image_index = 0
    sprite_index = spr_breakdancestart

}
//Shotgun
if (key_shoot2 && shotgunAnim == 1 && character != "V" && character != "S" && (!key_down))
{
    scr_soundeffect(14)
    state = 38
    with (instance_create(x, y, obj_pistoleffect))
        image_xscale = other.image_xscale
    image_index = 0
    sprite_index = spr_shotgunshoot
    if (character == "P")
    {
        with (instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet))
            playerid = other.id
        with (instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet))
        {
            spdh = 4
            playerid = other.id
        }
        with (instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet))
        {
            spdh = -4
            playerid = other.id
        }
    }
}
if (key_slap2 && character == "V")
{
    vsp = -5
    state = 39
    image_index = 0
    sprite_index = spr_playerV_airrevolver
    image_index = 0
    with (instance_create((x + (xscale * 25)), (y + 20), obj_shotgunbullet))
        playerid = other.id
    scr_soundeffect(14)
}

if (character == "N" && pogo = true)  {
	if place_meeting(x + xscale,y, obj_solid) && key_jump && wallclingbuffer <= 0
	{
	scr_soundeffect(sfx_step)
	state = states.wallcling
	sprite_index = spr_playerN_wallcling
	image_index = 0
	xscale *= -1
	vsp = 0
	doublejump = 0
	}
	else if key_jump && doublejump == 0 && sprite_index != spr_freefall && sprite_index != spr_facestomp
	{
		scr_soundeffect(sfx_rollgetup)
		image_index = 0		
		sprite_index = spr_playerN_doublejump
		jumpAnim = 1
		jumpstop = 0
		vsp = -9
		doublejump = 1
		with instance_create(x, y, obj_highjumpcloud2)
			image_xscale = other.xscale		
	}
}
if (key_shoot2 && character == "V" && (!instance_exists(obj_vigidynamite)))
{
    if (key_up && doublejump == 0 && sprite_index != spr_freefall && sprite_index != spr_facestomp)
    {
        if (move == 0)
            movespeed = 0
        state = 110
        jumpAnim = 1
        scr_soundeffect(0)
        image_index = 0
        vsp = -7
        sprite_index = spr_playerV_dynamitethrow
        with (instance_create(x, y, obj_vigidynamite))
        {
            image_xscale = other.xscale
            movespeed = 0
            vsp = -8
            countdown = 10
        }
        doublejump = 1
        with (instance_create(x, y, obj_highjumpcloud2))
            image_xscale = other.xscale
    }
    else
    {
        if (move == 0)
            movespeed = 0
        state = 110
        image_index = 0
        sprite_index = spr_playerV_dynamitethrow
        with (instance_create(x, y, obj_vigidynamite))
        {
            image_xscale = other.xscale
            movespeed = 6
            vsp = -6
        }
    }
}
if (key_slap2 && character == "S" && suplexmove == 0)
{
    if (move != 0)
        movespeed = 10
    suplexmove = 1
    scr_soundeffect(126)
    scr_soundeffect(33)
    sprite_index = spr_snick_jump
    state = 12
    image_index = 0
}
if (floor(image_index) == (image_number - 1) && sprite_index == spr_playerV_superjump)
{
    with (instance_create(x, (y + 25), obj_balloonpop))
        sprite_index = spr_shotgunimpact
}
if ((!key_attack) || move != xscale)
    mach2 = 0
if (key_attack && grounded && fallinganimation < 40)  && !(character == "N" && pogo = true)
{
    movespeed = 6
    sprite_index = spr_mach1
    jumpAnim = 1
    state = 69
    image_index = 0
}
if key_attack && (character == "N" && pogo = true) && !key_slap2 && pogojetcharge = false
{
    sprite_index = spr_playerN_pogostart
    state = states.pogo
    image_index = 0
	pogomovespeed = 6	
}
if key_attack2 && (character == "N" && pogo = true) && pogojetcharge = true
{
	scr_soundeffect(sfx_noisewoah)	
    if !key_up
	sprite_index = spr_playerN_jetpackstart
	else
	sprite_index = spr_superjumpprep
    state = states.jetpackstart
	if move != 0
		xscale = move
    hsp = 0
	vsp = 0
    image_index = 0
    superjumpprepsnd = audio_play_sound(sfx_superjumpprep, 1, false)
    audio_sound_gain(superjumpprepsnd, (1 * global.soundeffectsvolume), 0)
}
if key_taunt2
{
    scr_soundeffect(60)
    taunttimer = 20
    tauntstoredmovespeed = movespeed
    tauntstoredsprite = sprite_index
    tauntstoredstate = state
    state = 51
    image_index = random_range(0, (sprite_get_number(spr_taunt) - 1))
    sprite_index = spr_taunt
    with (instance_create(x, y, obj_taunteffect))
    {
        playerid = other.id
        baddie = 0
    }
}

// dougies bolt and bomb
if character = "D"
{
	if key_slap && spellselect != 2 && spellselect != 4
	{
			spellcastedonce = false;
			sprite_index = spr_pizzard_shoot
			state = states.throw //i hope this works
			image_index = 0
	}
	// superjump too lol
	if key_slap2 && key_up && spellselect = 4 && floatbuffer = false
	{
		floatbuffer = true
		sprite_index = spr_superjump
		state = states.jump
		vsp = -10
		jumpstop = true
		scr_soundeffect(sfx_superjumprelease)
	}
}
