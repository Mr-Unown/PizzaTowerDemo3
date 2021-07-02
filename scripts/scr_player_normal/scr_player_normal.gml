if (dir != xscale)
{
    dir = xscale
    movespeed = 2
    facehurt = 0
}
if (firebutt == 1 || firebutt == 2)
    firebutt = 0
mach2 = 0
move = (key_left + key_right)
if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
    hsp = (move * movespeed)
else if place_meeting(x, (y + 1), obj_railh)
    hsp = ((move * movespeed) - 5)
else if place_meeting(x, (y + 1), obj_railh2)
    hsp = ((move * movespeed) + 5)
if (character == "P" || character == "N" || character == "PZ" || character == "PM" || character == "V" || character = "D")
{
    if (machslideAnim == 0 && landAnim == 0 && shotgunAnim == 0)
    {
        if (move == 0)
        {
            if (idle < 400)
                idle++
            if (idle >= 150 && floor(image_index) == (image_number - 1))
            {
                facehurt = 0
                idle = 0
                image_index = 0
            }
            if (idle >= 150 && sprite_index != spr_idle1 && sprite_index != spr_idle2 && sprite_index != spr_idle3 && sprite_index != spr_idle4 && sprite_index != spr_idle5 && sprite_index != spr_idle6)
            {
                randomise()
                idleanim = random_range(0, 100)
                if (idleanim <= 16)
                    sprite_index = spr_idle1
                if (idleanim > 16 && idleanim < 32)
                    sprite_index = spr_idle2
                if (idleanim > 32 && idleanim < 48)
                    sprite_index = spr_idle3
                if (idleanim > 48 && idleanim < 64)
                    sprite_index = spr_idle4
                if (idleanim > 64 && idleanim < 80)
                    sprite_index = spr_idle5
                if (idleanim > 80)
                    sprite_index = spr_idle6
                image_index = 0
            }
            if (idle < 150)
            {
                if (facehurt == 0 && firebutt <= 3)
                {
                    if (windingAnim < 1800 || angry == 1 || global.playerhealth == 1)
                    {
                        start_running = 1
                        movespeed = 0
                        if (sprite_index == spr_playerV_revolverend)
                        {
                        }
                        else if (global.minutes == 0 && global.seconds == 0)
                            sprite_index = spr_hurtidle
                        else if (global.panic == 1 || global.snickchallenge == 1)
                            sprite_index = spr_panic
                        else if (angry == 1)
                            sprite_index = spr_3hpidle
                        else
                            sprite_index = spr_idle
                    }
                    else if (character != "S")
                    {
                        idle = 0
                        windingAnim--
                        sprite_index = spr_winding
                    }
                }
                else if (facehurt == 1 && character != "S" && firebutt <= 3)
                {
                    firebutt = 0
                    windingAnim = 0
                    if (sprite_index != spr_facehurtup && sprite_index != spr_facehurt)
                        sprite_index = spr_facehurtup
                    if (floor(image_index) == (image_number - 1) && sprite_index == spr_facehurtup)
                        sprite_index = spr_facehurt
                }
                else if (firebutt >= 3 && (character == "P" || character == "N"))
                {
                    if (buttanim <= 80)
                        firebutt = 0
                    windingAnim = 0
                    facehurt = 0
                    if (sprite_index != spr_fireassend && character != "PM" && character != "V")
                    {
                        sprite_index = spr_fireassend
                        image_index = 0
                    }
                    if (floor(image_index) == (image_number - 1) && sprite_index == spr_fireassend)
                    {
                        buttanim = 100
                        firebutt = 0
                    }
                }
                else if (firebutt != 0 && (character == "PM" || character == "PZ" || character == "V" || character == "D"))
                {
                    buttanim = 100
                    firebutt = 0
                    windingAnim = 0
                    facehurt = 0
                    if (sprite_index == spr_fireassend)
                    {
                        sprite_index = spr_idle
                        image_index = 0
                    }
                }
            }
        }
        if (move != 0)
        {
            if (buttanim > 0)
                buttanim--
            machslideAnim = 0
            idle = 0
            facehurt = 0
            if (global.minutes == 0 && global.seconds == 0)
                sprite_index = spr_hurtwalk
            else if (angry == 1)
                sprite_index = spr_3hpwalk
            else
                sprite_index = spr_move
        }
        if (move != 0)
            xscale = move
    }
}
if (character == "S")
{
    if (machslideAnim == 0)
    {
        if (move == 0)
        {
            if (idle < 400)
                idle++
            if (idle >= 150 && floor(image_index) == (image_number - 1))
            {
                idle = 0
                image_index = 0
            }
            if (idle >= 150 && sprite_index != spr_idle1)
                sprite_index = spr_idle1
            if (idle < 150)
                sprite_index = spr_idle
        }
        if (move != 0)
        {
            machslideAnim = 0
            sprite_index = spr_move
            xscale = move
        }
    }
    if (firebutt != 0 && character == "S")
    {
        buttanim = 100
        firebutt = 0
        windingAnim = 0
        facehurt = 0
        if (sprite_index == spr_fireassend)
        {
            sprite_index = spr_idle
            image_index = 0
        }
    }
}
//Grab Cancel

if (landAnim == 1)
{
	if sprite_index = spr_grabcancel && floor(image_index) = image_number - 1
	{
		if move = 0	{
			if (shotgunAnim == 0) 
				sprite_index = spr_idle
			else 
				sprite_index = spr_shotgunidle
		}
		else
			sprite_index = spr_move	
		image_index = 0
		landAnim = 0
	}
    if (shotgunAnim == 0) && sprite_index != spr_grabcancel
    {
        if (move == 0)
        {
            movespeed = 0
            sprite_index = spr_land
            if (floor(image_index) == (image_number - 1))
                landAnim = 0
        }
        if (move != 0)
        {
            sprite_index = spr_land2
            if (floor(image_index) == (image_number - 1))
            {
                landAnim = 0
                sprite_index = spr_move
                image_index = 0
            }
        }
    }
    if (shotgunAnim == 1) && sprite_index != spr_grabcancel
    {
        sprite_index = spr_shotgunland
        if (floor(image_index) == (image_number - 1))
        {
            landAnim = 0
            sprite_index = spr_move
            image_index = 0
        }
    }
}
if (machslideAnim == 1)
{
    sprite_index = spr_machslideend
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_machslideend)
        machslideAnim = 0
}
if (sprite_index == spr_shotgunshoot && floor(image_index) == (image_number - 1))
    sprite_index = spr_shotgunidle
if (sprite_index == spr_playerV_revolverend && floor(image_index) == (image_number - 1))
    sprite_index = spr_idle
if (landAnim == 0)
{
    if (shotgunAnim == 1 && move == 0 && sprite_index != spr_shotgunshoot)
        sprite_index = spr_shotgunidle
    else if (shotgunAnim == 1 && sprite_index != spr_shotgunshoot)
        sprite_index = spr_shotgunwalk
}
if (scr_solid((x + sign(hsp)), y) && xscale == 1 && move == 1 && (!place_meeting((x + 1), y, obj_slope)))
    movespeed = 0
if (scr_solid((x + sign(hsp)), y) && xscale == -1 && move == -1 && (!place_meeting((x - 1), y, obj_slope)))
    movespeed = 0
jumpstop = 0
if ((!grounded) && (!key_jump))
{
    if (shotgunAnim == 0)
        sprite_index = spr_fall
    else
        sprite_index = spr_shotgunfall
    jumpAnim = 0
    state = 58
    image_index = 0
}
if (key_jump && grounded && (!key_down))
{
    scr_soundeffect(0)
    sprite_index = spr_jump
    if (shotgunAnim == 1)
        sprite_index = spr_shotgunjump
    with (instance_create(x, y, obj_highjumpcloud2))
        image_xscale = other.xscale
    if (character == "P") 
        vsp = -11
	else if (character == "N" && pogo = true)
		vsp = -10
    else
        vsp = -13
    state = 58
    image_index = 0
    jumpAnim = 1
}
if (grounded && input_buffer_jump < 8 && (!key_down) && (!key_attack) && vsp > 0)
{
    scr_soundeffect(0)
    sprite_index = spr_jump
    if (shotgunAnim == 1)
        sprite_index = spr_shotgunjump
    with (instance_create(x, y, obj_highjumpcloud2))
        image_xscale = other.xscale
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
    freefallstart = 0
}
if (((key_down && grounded) || (scr_solid(x, (y - 3)) && grounded)) && character != "S")
{
    state = 66
    landAnim = 0
    crouchAnim = 1
    image_index = 0
    idle = 0
}
//Movespeed
if (move != 0)
{
    if (movespeed < 6)
        movespeed += 0.5
    else if (floor(movespeed) == 6)
        movespeed = 6
}
else
    movespeed = 0
if (movespeed > 6)
    movespeed -= 0.1
	
	
momemtum = 0
if (move != 0)
{
    xscale = move
    if (movespeed < 3 && move != 0)
        image_speed = 0.35
    else if (movespeed > 3 && movespeed < 6)
        image_speed = 0.45
    else
        image_speed = 0.6
}
else
    image_speed = 0.35
if (key_slap2 && character == "V")
{
    if (move == 0)
        movespeed = 0
    state = 39
    image_index = 0
    sprite_index = spr_playerV_revolverstart
}
//Dynamite
if (key_shoot2 && character == "V" && (!instance_exists(obj_vigidynamite)))
{
    if (move == 0)
        movespeed = 0
	else
		movespeed = 3
    state = 110
    image_index = 0
    sprite_index = spr_playerV_dynamitethrow
    with (instance_create(x, y, obj_vigidynamite))
    {
        image_xscale = other.xscale
        movespeed = 6
        vsp = -6
        playerid = other.id
    }
}
if (key_slap2 && (character = "P" || character == "PZ" || character = "N" || (character = "D" && spellselect = 2)))
{
	if key_up && (character = "P" || character == "PZ"  || character = "N")
	{
		if character = "P" || character == "PZ" 
		{
			suplexmove = 1		
			suplexdashsnd = audio_play_sound(sfx_suplexdash, 1, false)
			audio_sound_gain(suplexdashsnd, (1 * global.soundeffectsvolume), 0)		
			doublejump = 1
			scr_soundeffect(sfx_jump)
			scr_soundeffect(sfx_rollgetup)
			jumpstop = 1
			momemtum = 1
			if movespeed < 3
				movespeed = 3
			vsp = -12
			state = 58
			jumpAnim = 1
			sprite_index = spr_player_shoryumineken		
			image_index = 0
		}
		else if character = "N" 
		{
			if movespeed > 3
				movespeed = 3
			state = states.throwdynamite
			image_index = 0
			sprite_index = spr_playerN_noisebombthrow
			with (instance_create(x, y, obj_noisethrowingbomb))
			{
				image_xscale = other.xscale
				movespeed = 2
				vsp = -11
				playerid = other.id
			}
		}
	}
	else
	{
		suplexmove = 1
		suplexdashsnd = audio_play_sound(sfx_suplexdash, 1, false)
		audio_sound_gain(suplexdashsnd, (1 * global.soundeffectsvolume), 0)
		state = 22
		image_index = 0
		if (shotgunshootbuffer < 50 && shotgunAnim == 1)
	        sprite_index = spr_shotgunsuplexdash
	    else
			sprite_index = spr_suplexdash
		if (character == "P" || character == "PZ" || character = "D")
	        movespeed = 6
	    else
			movespeed = 4
	}
}
//Pepperman Attack
if (key_slap2 && character == "PM")
{
    if (move == 0)
        movespeed = 0
    else
    {
        movespeed = 10
        vsp = -5
    }
    suplexmove = 1
    scr_soundeffect(126)
    scr_soundeffect(33)
    sprite_index = spr_playerP_shoulder
    state = states.kingknightroll
    image_index = 0
}
//Breakdance
if (key_shoot2 && shotgunAnim == 0) && character != "V" && character != "D"
{
	if murderammo >= 1
	{
		image_index = 0
		sprite_index = spr_murder
		state = states.murder
		switch character
		{
			case "N":
			
			with (instance_create((x), (y), obj_noisekickbomb))
			{
				playerid = other.id
				image_xscale = other.xscale
			}
			
			break;
			default:
			
			with (instance_create((x + 10*xscale), (y + 16), obj_revolverbullet))
			{
				playerid = other.id
				image_xscale = other.xscale
			}	
			
			break;
		}
		scr_soundeffect(14)
		murderammo -= 1
	}
	else
	{
		breakdancebuffer = 50
		scr_soundeffect(sfx_breakdance)
		movespeed = 10
		state = states.breakdance
		with instance_create(x, y, obj_dashcloud2)
			image_xscale = other.xscale
		image_index = 0
		sprite_index = spr_breakdancestart
	}
}
//Shotgun
if (key_shoot2 && shotgunAnim == 1 && character != "V" && character != "S")
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
if (key_slap2 && character == "S")
{
    if (move == 0)
        movespeed = 0
    else
    {
        movespeed = 10
        vsp = -5
    }
    suplexmove = 1
    scr_soundeffect(126)
    scr_soundeffect(33)
    sprite_index = spr_snick_jump
    state = 12
    image_index = 0
}
if (key_attack && (!place_meeting((x + xscale), y, obj_solid)) && (character == "P" || (character == "N" && pogo != true) || character == "PZ"  || (character = "D" && spellselect = 2) || character == "V"))
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
if (character == "S" && move != 0 && (!place_meeting((x + xscale), y, obj_solid)))
{
    movespeed = 6
    sprite_index = spr_mach1
    jumpAnim = 1
    state = 69
    image_index = 0
}
if (key_attack && (!place_meeting((x + xscale), y, obj_solid)) && character == "S" && grounded)
{
    state = 22
    movespeed = 0
}
if (move != 0 && (floor(image_index) == 3 || floor(image_index) == 8) && steppy == 0)
{
    instance_create(x, (y + 43), obj_cloudeffect)
    steppy = 1
}
if (move != 0 && floor(image_index) != 3 && floor(image_index) != 8)
    steppy = 0
if key_taunt2
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
superspringjump = 0
if (gamepad_button_value(0, gp_shoulderlb) != 0 || (key_taunt2 && key_down2))
{
    if (character == "N")
    {
        state = 51
        sprite_index = spr_playerN_dab
    }
    if (character == "P")
    {
        state = 51
        sprite_index = spr_player_smirk
    }
    if (character == "S")
    {
        state = 51
        sprite_index = spr_snick_exe
    }
    if (character == "V")
    {
        state = 51
        sprite_index = spr_playerV_revolverstart
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
		vsp = -20
		jumpstop = true
		scr_soundeffect(sfx_superjumprelease)
	}
}

