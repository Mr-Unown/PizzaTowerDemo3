function scr_player_handstandjump() {
	switch character {
		case "P":
			landAnim = 0
			mach2 = 35
			hsp = (xscale * movespeed)
			grav = 0
			momemtum = 1
			dir = xscale
			if (image_index < 2)
			    movespeed = 12
			if (image_index > 7)
			    movespeed -= 1
			if (floor(image_index) == (image_number - 1))
			{
			    state = 0
			    grav = 0.5
				flash = 0
			}
			if (key_down && grounded)
			{
			    grav = 0.5
			    sprite_index = spr_crouchslip
			        machhitAnim = 0
			    state = 61
			}
			if (key_jump && grounded)
			{
			    movespeed = 10
			    sprite_index = spr_mach2jump
			    instance_create(x, y, obj_jumpdust)
			    state = 63
			    vsp = -9
			}
			    if (scr_solid((x + 1), y) && xscale == 1 && (!place_meeting((x + sign(hsp)), y, obj_slope)) && (!place_meeting((x + xscale), y, obj_destructibles)))
			    {
			        scr_sound(16)
			        grav = 0.5
			        movespeed = 0
			        state = 65
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
			        scr_sound(16)
			        grav = 0.5
			        movespeed = 0
			        state = 65
			        hsp = 2.5
			        vsp = -3
			        mach2 = 0
			        image_index = 0
			        machslideAnim = 1
			        machhitAnim = 0
			        instance_create((x - 10), (y + 10), obj_bumpeffect)
			    }
			image_speed = 0.4
			if ((!instance_exists(obj_slidecloud)) && grounded && movespeed > 5)
			    instance_create(x, y, obj_slidecloud)
		break
		/*case "DEEZNUTS":
			landAnim = 0
			mach2 = 35
			hsp = (xscale * movespeed)
			grav = 0.5
			momemtum = 1
			dir = xscale
			if (image_index < 2)
			    movespeed = 12
			if (image_index > 7)
			    movespeed -= 1
			if (floor(image_index) == (image_number - 1))
			{
			    state = 0
			    grav = 0.5
			}
			if (key_down && grounded)
			{
			    grav = 0.5
			    sprite_index = spr_crouchslip
			        machhitAnim = 0
			    state = 61
			}
			if (key_jump)
			{
			    movespeed = 10
			    sprite_index = spr_mach2jump
			    instance_create(x, y, obj_jumpdust)
			    state = 63
			    vsp = -4
			}
			    if (scr_solid((x + 1), y) && xscale == 1 && (!place_meeting((x + sign(hsp)), y, obj_slope)) && (!place_meeting((x + xscale), y, obj_destructibles)))
			    {
			        scr_sound(16)
			        grav = 0.5
			        movespeed = 0
			        state = 65
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
			        scr_sound(16)
			        grav = 0.5
			        movespeed = 0
			        state = 65
			        hsp = 2.5
			        vsp = -3
			        mach2 = 0
			        image_index = 0
			        machslideAnim = 1
			        machhitAnim = 0
			        instance_create((x - 10), (y + 10), obj_bumpeffect)
			    }
			image_speed = 0.4
			if ((!instance_exists(obj_slidecloud)) && grounded && movespeed > 5)
			    instance_create(x, y, obj_slidecloud)*/
	}


}
