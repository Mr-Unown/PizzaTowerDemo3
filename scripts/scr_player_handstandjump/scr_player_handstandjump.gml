if (character != "S")
{
	if character == "PZ" 
		vsp = 0.5
    landAnim = 0
    hsp = (xscale * movespeed)
    move = (key_left + key_right)
    momemtum = 1
    dir = xscale
    if (character == "P")
    {
        if (movespeed < 10 && grounded)
            movespeed += 0.5
        else if (!grounded)
            movespeed = 10
    }
	if character = "PZ"
	{
       movespeed = 10
	}
    if (character == "N")
    {
        if (movespeed < 8 && grounded)
            movespeed += 0.5
        else if (!grounded)
            movespeed = 8
    }
    if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
    {
        vsp /= 10
        jumpstop = 1
    }
    if (move != xscale && move != 0)
	{
		if !grounded 
		{
			state = 58
			if character = "P"
			{
				sprite_index = spr_grabcancelair
				jumpAnim = 1
				image_index = 0
			}
			else
			{
				image_index = 0
				sprite_index = spr_fall
				jumpAnim = 0
			}
		}
		else
		{
			state = 0
			if character = "P"
			{
				sprite_index = spr_grabcancel
				landAnim = 1
				image_index = 0
			}
		}
	}
    if ((floor(image_index) == (image_number - 1) || sprite_index == spr_suplexdashjump || sprite_index == spr_suplexdashjumpstart) && grounded && (!key_attack) && vsp > 0) && character != "PZ"
    {
        image_speed = 0.35
        state = 0
        grav = 0.5
    }
	//Pizzelle
    if floor(image_index) == (image_number - 1) && sprite_index = spr_suplexdash && character = "PZ"
    {
        image_speed = 0.35
        state = 0
        grav = 0.5
    }

    if ((floor(image_index) == (image_number - 1) || sprite_index == spr_suplexdashjump || sprite_index == spr_suplexdashjumpstart) && grounded && key_attack)
    {
        image_speed = 0.35
		if (character == "N" && pogo = true) && !key_slap2 
		{
			sprite_index = spr_playerN_pogostart
			state = states.pogo
			image_index = 0
			pogomovespeed = 9
		}
		else
			state = 70
        grav = 0.5
    }
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_suplexdashjumpstart)
        sprite_index = spr_suplexdashjump
    if (key_down && grounded && vsp > 0)
    {
        grav = 0.5
        sprite_index = spr_crouchslip
        machhitAnim = 0
        state = 68
        movespeed = 15
    }
    if ((!grounded) && (sprite_index == spr_suplexdash || sprite_index == spr_shotgunsuplexdash)) && character != "PZ"
    {
        image_index = 0
        sprite_index = spr_suplexdashjumpstart
    }
    if key_jump
        input_buffer_jump = 0
    if (grounded && input_buffer_jump < 8)
    {
        image_index = 0
        sprite_index = spr_suplexdashjumpstart
        scr_soundeffect(0)
        instance_create(x, y, obj_highjumpcloud2)
        if (character == "P")
            vsp = -11
        else
            vsp = -13
    }
    if (scr_solid((x + 1), y) && xscale == 1 && (!place_meeting((x + sign(hsp)), y, obj_slope)) && (!place_meeting((x + xscale), y, obj_destructibles)))
    {
        scr_soundeffect(16)
        grav = 0.5
        movespeed = 0
        state = 72
        hsp = -2.5
        vsp = -3
        mach2 = 0
        image_index = 0
        machslideAnim = 1
        machhitAnim = 0
        instance_create((x + 10), (y + 10), obj_bumpeffect)
    }
    if (scr_solid((x - 1), y) && xscale == -1 && (!place_meeting((x + sign(hsp)), y, obj_slope)) && (!place_meeting((x + xscale), y, obj_destructibles)))
    {
        scr_soundeffect(16)
        grav = 0.5
        movespeed = 0
        state = 72
        hsp = 2.5
        vsp = -3
        mach2 = 0
        image_index = 0
        machslideAnim = 1
        machhitAnim = 0
        instance_create((x - 10), (y + 10), obj_bumpeffect)
    }
    if ((!instance_exists(obj_slidecloud)) && grounded && movespeed > 5)
    {
        with (instance_create(x, y, obj_slidecloud))
            image_xscale = other.xscale
    }
    if key_slap2
    {
        if (key_jump && grounded)
        {
            sprite_index = spr_mach2jump
            state = 70
            grav = 0.5
            instance_create(x, y, obj_jumpdust)
            suplexmove = 0
            vsp = -11
        }
        else
        {
            if (move != 0)
                xscale = move
            bufferslap = 0
            movespeed = 8
            if (!grounded)
                vsp = -5
            image_index = 0
            if (character == "P")
            {
                if grounded
                    sprite_index = spr_player_groundbashstart
                else
                    sprite_index = spr_player_airbashstart
            }
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
        machhitAnim = 0
        machhitAnimtimer = 500
        rollmove = 0
    }
	if (key_jump && grounded && character = "PZ") 
	{
		sprite_index = spr_mach2jump
		state = 70
		grav = 0.5
		instance_create(x, y, obj_jumpdust)
		suplexmove = 0
		vsp = -11
	}	
}
if (character == "S")
{
    if key_attack
    {
        hsp = 0
        if (movespeed < 20)
            movespeed += 0.5
        if (movespeed == 20)
            sprite_index = spr_snick_superpeelout
        else if (movespeed < 20 && movespeed > 12)
            sprite_index = spr_snick_mach3
        else if (movespeed < 12 && movespeed > 8)
            sprite_index = spr_snick_mach2
        else
            sprite_index = spr_snick_walk
    }
    else if (movespeed >= 12)
        state = 91
    else
    {
        state = 0
        movespeed = 0
    }
    if ((!instance_exists(obj_dashcloud2)) && grounded && movespeed > 5)
    {
        with (instance_create(x, y, obj_dashcloud2))
            image_xscale = other.xscale
    }
}
image_speed = 0.35
