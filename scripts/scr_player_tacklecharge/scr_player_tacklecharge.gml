function scr_player_tacklecharge() {
	if (windingAnim < 2000)
	    windingAnim++
	if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
	    hsp = (xscale * movespeed)
	else if place_meeting(x, (y + 1), obj_railh)
	    hsp = ((xscale * movespeed) - 5)
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = ((xscale * movespeed) + 5)
	move2 = (key_right2 + key_left2)
	move = (key_right + key_left)
	movespeed = 10
	crouchslideAnim = 1
	if (movespeed < 24 && move == xscale)
	    movespeed += 0.05
	if key_slap2
	{
	    if (move != 0)
	        move = xscale
	    if (sprite_index == spr_swingding)
	        sprite_index = spr_swingdingend
	    else if (!key_up)
	        sprite_index = choose(spr_finishingblow1, spr_finishingblow2, spr_finishingblow3, spr_finishingblow4, spr_finishingblow5)
	    else if key_up
	        sprite_index = spr_uppercutfinishingblow
	    image_index = 0
	    hsp = 0
	    movespeed = 0
		state = 3
	}
	if ((!key_jump2) && jumpstop == 0 && vsp < 0.5)
	{
	    vsp /= 10
	    jumpstop = 1
	}
	if (grounded && vsp > 0)
	    jumpstop = 0
	if (input_buffer_jump < 8 && grounded)
	{
	    image_index = 0
	    sprite_index = spr_player_secondjump1
	    scr_soundeffect(sfx_jump)
	    vsp = -11
	}
	if key_jump
	    input_buffer_jump = 0
	if (scr_solid((x + hsp), y) && (!scr_slope_ext(x + (hsp), y)) && (!place_meeting((x + hsp), y, obj_destructibles)))
	{
	    if (baddiegrabbedID != noone)
	    {
	        if (baddiegrabbedID.object_index == obj_player1 || baddiegrabbedID.object_index == obj_player2)
	        {
	            with (baddiegrabbedID)
	            {
	                scr_soundeffect(sfx_groundpound)
	                scr_soundeffect(sfx_bumpwall)
	                other.thrown = 1
	                instance_create(x, y, obj_slapstar)
	                instance_create(x, y, obj_baddiegibs)
	                other.flash = 1
	                x = other.x
	                y = other.y
	                state = 73
	                hsp = ((-image_xscale) * 10)
	                vsp = -10
	                alarm[8] = 60
	                alarm[7] = 120
	                other.baddiegrabbedID = noone
	            }
	        }
	        else if (baddiegrabbedID != noone)
	        {
	            with (baddiegrabbedID)
	            {
	                scr_soundeffect(sfx_hitenemy)
	                grabbed = 0
	                grav = 0.5
	                instance_create(x, y, obj_bangeffect)
	                instance_create(x, y, obj_slapstar)
	                instance_create(x, y, obj_baddiegibs)
	                flash = 1
	                alarm[1] = 5
	                grav = 0.5
	                thrown = 1
	                x = other.x
	                y = other.y
	                state = 106
	                hsp = ((-image_xscale) * 10)
	                vsp = -10
	                other.baddiegrabbedID = noone
	                with (obj_camera)
	                {
	                    shake_mag = 3
	                    shake_mag_acc = (3 / room_speed)
	                }
	            }
	        }
	    }
	    movespeed = 0
	    state = 72
	    hsp = -2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create((x + 10), (y + 10), obj_bumpeffect)
	}
	sprite_index = spr_charge
	image_speed = 0.65
	if (key_down && grounded)
	{
	    sprite_index = spr_crouchslip
	    if (character == "P")
	        machhitAnim = 0
	    state = 68
	}
	if ((!key_attack) && move != xscale && grounded)
	{
	    image_index = 0
	    state = 71
	    sprite_index = spr_machslidestart
	}
	if (move == (-xscale) && grounded)
	{
	    image_index = 0
	    state = 71
	    sprite_index = spr_machslideboost
	}
	if (move == xscale && (!key_attack) && grounded)
	    state = 0
	if ((!instance_exists(dashcloudid)) && grounded)
	{
	    with (instance_create(x, y, obj_dashcloud))
	    {
	        image_xscale = other.xscale
	        other.dashcloudid = id
	    }
	}



}
