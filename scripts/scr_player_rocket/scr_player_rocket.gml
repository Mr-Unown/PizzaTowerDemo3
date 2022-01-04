function scr_player_rocket(){
    hsp = (xscale * movespeed)
    move = (key_right + key_left)
	if (sprite_index == spr_rocket)
		vsp = 0
    alarm[5] = -1
    alarm[8] = 60
    alarm[7] = 120
    hurted = 1
    if (sprite_index != spr_rocketstart && sprite_index != spr_rocketupstart)
    {
		if (sprite_index == spr_rocket || sprite_index == spr_player_rocketgrounded)
		{
	        if (key_up/*&& fightball == 0*/)
	            vsp = -3
	        if (key_down/*&& fightball == 0*/)
	            vsp = 3
	        if (movespeed < 14)
	            movespeed = 14
		}
		else if (sprite_index == spr_rocketup)
		{
			/*if key_left
			{
				move = -1
				movespeed = -3
			}
			if key_right
			{
				move = 1
				movespeed = 3
			}*/
			if (vsp > -14)
	            vsp = -14
			
		}
		if (key_slap2 && rocketup == 0 && sprite_index = spr_rocket)
		{
			rocketup = 1
			sprite_index = spr_rocketupstart
			vsp = 0
			movespeed = 0
		}
		else if (key_slap2 && rocketup == 1 && sprite_index = spr_rocketup)
		{
			rocketup = 0
			sprite_index = spr_rocketstart
			vsp = 0
			movespeed = 0
		}
    }
    else
    {
        hsp = 0
        movespeed = 0
        vsp = 0
        if (floor(image_index) == (image_number - 1))
        {
			if (sprite_index == spr_rocketstart)
			{
	            sprite_index = spr_rocket
	            image_index = 0
	            movespeed = 14
			}
			else
			{
				sprite_index = spr_rocketup
				image_index = 0
				vsp = -14
			}
        }
    }
	if place_meeting(x,y+1, obj_solid)
	sprite_index = spr_player_rocketgrounded
    if (movespeed < 24 && move == xscale)
    {
        movespeed += 0.1
        if ((!instance_exists(crazyruneffectid)) && grounded)
        {
            with (instance_create(x, y, obj_crazyruneffect))
            {
                playerid = other.object_index
                other.crazyruneffectid = id
            }
            if (sprite_index == spr_crazyrun)
            {
                with (instance_create(x, y, obj_dashcloud))
                {
                    image_xscale = other.xscale
                    sprite_index = spr_flamecloud
                }
            }
        }
    }
    /*else if (movespeed > 12 && move != xscale && pizzapepper == 0)
        movespeed -= 0.1
    if (fightball == 0)
    {
        if (sprite_index != spr_rocketstart)
            sprite_index = spr_rocket
    }*/
    if ((!key_jump2) && jumpstop == 0 && vsp < 0.5/* && fightball == 1*/)
    {
        vsp /= 10
        jumpstop = 1
    }
    if (grounded && vsp > 0 /*&& fightball == 1*/)
        jumpstop = 0
    if (scr_solid((x + sign(hsp)), y) && ((!place_meeting((x + sign(hsp)), y, obj_slope)) || place_meeting((x + sign(hsp)), y, obj_solid)) && (!place_meeting((x + sign(hsp)), y, obj_metalblock)) && character != "V" && (!place_meeting((x + sign(hsp)), y, obj_destructibles)) && character != "V" && (!place_meeting((x + sign(hsp)), y, obj_johnpillar)))
    {
        pizzapepper = 0
        sprite_index = spr_rockethitwall
        scr_soundeffect(sfx_groundpound)
        scr_soundeffect(sfx_bumpwall)
        with (obj_camera)
        {
            shake_mag = 20
            shake_mag_acc = (40 / room_speed)
        }
        hsp = 0
        image_speed = 0.35
        with (obj_baddie)
        {
            if point_in_camera(x, y, view_camera[0])
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
        hsp = (-3.5 * xscale)
        vsp = -6
        mach2 = 0
        image_index = 0
        instance_create((x - 10), (y + 10), obj_bumpeffect)
        instance_create(x, y, obj_safeexplosion)
    }
	if (scr_solid(x, (y + sign(vsp))) && ((!place_meeting(x, (y + sign(vsp)), obj_slope)) || place_meeting(x, (y + sign(vsp)), obj_solid)) && (!place_meeting(x, (y + sign(vsp)), obj_metalblock)) && character != "V" && (!place_meeting(x, (y + sign(vsp)), obj_destructibles)) && character != "V" && (!place_meeting(x, (y + sign(vsp)), obj_johnpillar)))
    {
        pizzapepper = 0
        sprite_index = spr_rockethitwall
        scr_soundeffect(sfx_groundpound)
        scr_soundeffect(sfx_bumpwall)
        with (obj_camera)
        {
            shake_mag = 20
            shake_mag_acc = (40 / room_speed)
        }
        hsp = 0
		vsp = 0
        image_speed = 0.35
        with (obj_baddie)
        {
            if point_in_camera(x, y, view_camera[0])
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
        hsp = (-3.5 * xscale)
        vsp = 6
        mach2 = 0
        image_index = 0
        instance_create((x - 10), (y + 10), obj_bumpeffect)
        instance_create(x, y, obj_safeexplosion)
    }
    if ((!instance_exists(dashcloudid)) && grounded && (!place_meeting(x, (y + 1), obj_water)))
    {
        with (instance_create(x, y, obj_superdashcloud))
        {
            //if (other.fightball == 1)
                //instance_create(obj_player.x, obj_player.y, obj_slapstar)
            image_xscale = other.xscale
            other.dashcloudid = id
        }
    }
    if ((!instance_exists(dashcloudid)) && grounded && place_meeting(x, (y + 1), obj_water))
    {
        with (instance_create(x, y, obj_superdashcloud))
        {
            //if (other.fightball == 1)
                //instance_create(obj_player.x, obj_player.y, obj_slapstar)
            image_xscale = other.xscale
            //sprite_index = spr_watereffect
            other.dashcloudid = id
        }
    }
    if (sprite_index != spr_rocketstart && sprite_index != spr_rocketup && sprite_index != spr_rocketupstart && (!instance_exists(chargeeffectid)))
    {
        with (instance_create(x, y, obj_chargeeffect))
        {
            playerid = other.object_index
            other.chargeeffectid = id
        }
    }
	if (sprite_index = spr_rocketup && (!instance_exists(chargeeffectid)))
    {
        with (instance_create(x, y, obj_superslameffect))
        {
			image_yscale = -1
            playerid = other.object_index
            other.chargeeffectid = id
        }
    }
    if (sprite_index == spr_mach4 /*|| sprite_index == spr_fightball*/)
        image_speed = 0.4
    if (sprite_index == spr_crazyrun)
        image_speed = 0.75
    if (sprite_index == spr_rollgetup || sprite_index == spr_mach3hit)
        image_speed = 0.4
    else
        image_speed = 0.4
    return;
}