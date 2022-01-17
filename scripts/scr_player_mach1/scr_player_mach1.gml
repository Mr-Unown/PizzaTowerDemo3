function scr_player_mach1() {
	dir = xscale
	move = (key_left + key_right)
	landAnim = 0
	/*
	if (scr_solid((x + 1), y) && xscale == 1 && (!place_meeting((x + 1), y, obj_slope)))
	{
	    mach2 = 0
	    state = 0
	    movespeed = 0
	}
	if (scr_solid((x - 1), y) && xscale == -1 && (!place_meeting((x - 1), y, obj_slope)))
	{
	    mach2 = 0
	    state = 0
	    movespeed = 0
	}*/
	if scr_solid(x + xscale, y) && ( !scr_slope_ext(x + xscale,y)  )
	{
		hsp = 0
	    mach2 = 0
	    state = 0
	    movespeed = 0	
	}	
	machhitAnim = 0
	crouchslideAnim = 1
	if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
	    hsp = (xscale * movespeed)
	else if place_meeting(x, (y + 1), obj_railh)
	    hsp = ((xscale * movespeed) - 5)
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = ((xscale * movespeed) + 5)

	if (xscale == 1 && move == -1)
	{
	    sprite_index = spr_mach1
	    momemtum = 0
	    mach2 = 0
	    movespeed = 6
	    image_index = 0
	    xscale = -1
	}
	if (xscale == -1 && move == 1)
	{
	    sprite_index = spr_mach1
	    momemtum = 0
	    mach2 = 0
	    movespeed = 6
	    image_index = 0
	    xscale = 1
	}
	if grounded
	{
	    if (movespeed <= 8)
	        movespeed += 0.075
	    if (movespeed >= 8)
	    {
	        state = 70
	        with (instance_create(x, y, obj_jumpdust))
	            image_xscale = other.xscale
	    }
	}
	if ((!grounded) && sprite_index != spr_airdash1)
	    sprite_index = spr_airdash2
	if (sprite_index == spr_airdash1 && floor(image_index) == (image_number - 1))
	    sprite_index = spr_airdash2
	if (((!key_attack) && character != "S") || (character == "S" && move == 0))
	{
	    state = 0
	    image_index = 0
	}
	if ((!key_jump2) && jumpstop == 0 && vsp < 0.5)
	{
	    vsp /= 10
	    jumpstop = 1
	}
	if (grounded && vsp > 0)
	    jumpstop = 0
	if scr_solid(x + xscale,y)  && (!scr_slope_ext(x + sign(hsp), y) )
	{
		sprite_index = spr_splat
		image_index = 0
		grav = 0
	    movespeed = 0
		hsp = 0
		vsp = 0
	    state = states.bump
		if character = "PZ"
		with instance_create(x,y,obj_debris)
		{
		sprite_index = spr_PZscooter
		image_xscale = other.xscale
		}
	}
	//image_speed = 0.5
	if ((!instance_exists(dashcloudid)) && grounded)
	{
	    with (instance_create(x, y, obj_dashcloud))
	    {
	        image_xscale = other.xscale
	        other.dashcloudid = id
	    }
	}
	if (key_slap2 && key_down)
	{
	    image_index = 0
	    state = 92
	    if (character == "P")
	        vsp = -5
	    else
	        vsp = -7
	}
	if sprite_index = spr_rollgetup && floor(image_index) >= image_number - 1
	{
		if (grounded && sprite_index != spr_mach1 && vsp > 0)
		{
			sprite_index = spr_mach1
			image_index = 0
		}
	}
	if (grounded && sprite_index != spr_mach1 &&  sprite_index != spr_rollgetup  && vsp > 0)
	{
	    sprite_index = spr_mach1
	    image_index = 0
	}
	if (key_jump && grounded)
	{
	    scr_soundeffect(sfx_jump)
	    sprite_index = spr_airdash1
	    dir = xscale
	    momemtum = 1
	    if (character == "P")
	        vsp = -11
	    else
	        vsp = -13
	    jumpAnim = 1
	    image_index = 0
	}
	if (key_attack && !scr_solid(x + xscale,y)  && character == "S" && grounded)
	{
	    state = 22
	    movespeed = 0
	}
	if (key_down && !grounded && sprite_index != spr_player_jugglebash)
	{
	    if (shotgunAnim == 0 || (character == "V" && character == "S"))
	    {
	        image_index = 0
	        state = 92
	        sprite_index = spr_bodyslamstart
	        if (character == "P" || character == "PZ" || character == "S")
	            vsp = -5
	        else
	            vsp = -7
	    }
	    else if (character != "V" && character != "S")
	    {
	        scr_soundeffect(sfx_killingblow)
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
	if key_taunt2
	{
	    scr_soundeffect(sfx_taunt)
	    taunttimer = 20
	    tauntstoredmovespeed = movespeed
	    tauntstoredsprite = sprite_index
	    tauntstoredstate = state
		tauntstoredimage = image_index
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
	if (key_slap2 && character == "V")
	{
	    vsp = -5
	    state = 39
	    image_index = 0
	    sprite_index = spr_playerV_airrevolver
	    image_index = 0
	    instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet)
	    scr_soundeffect(sfx_killingblow)
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
	if (key_slap2 && character == "S" && suplexmove == 0)
	{
	    suplexmove = 1
	    vsp = -5
	    scr_soundeffect(sfx_spin)
	    scr_soundeffect(sfx_suplexdash)
	    sprite_index = spr_snick_jump
	    state = 12
	    image_index = 0
	}



}
