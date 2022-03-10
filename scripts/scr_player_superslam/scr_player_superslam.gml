function scr_player_superslam() {
	if (sprite_index == spr_piledriver)
	{
	    move = (key_left + key_right)
	    hsp = (move * movespeed)
	}
	else
	{
	    move = 0
	    hsp = 0
	}
	if (grounded && (!place_meeting(x, (y + 1), obj_destructibles)) && sprite_index == spr_piledriver && vsp > 0)
	{
	    scr_soundeffect(sfx_groundpound)
	    sprite_index = spr_piledriverland
		with obj_baddie
		squashed = true
	    jumpAnim = 1
	    image_index = 0
	    with (obj_camera)
	    {
	        shake_mag = 20
	        shake_mag_acc = (40 / room_speed)
	    }
	    hsp = 0
	    bounce = 0
	    with (instance_create(x, (y + 35), obj_bangeffect))
	        xscale = obj_player.xscale
		with instance_create(x, y, obj_landcloud)
		{
			playerid = other.id
			image_xscale = other.xscale
		}	
	    freefallstart = 0
	    with (obj_baddie)
	    {
	        if (grounded && point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0))))
	        {
	            image_index = 0
	            vsp = -7
	            hsp = 0
	        }
	    }
	}
	if sprite_index = spr_piledriverland && animation_end()
	{
		/*
	    state = 58
	    vsp = -8
	    sprite_index = spr_machfreefall
		*/
		image_index = 0
		sprite_index = spr_piledriverjump
		if key_jump2
			vsp = -10
		else
			vsp = -8
	    state = 58
	    jumpAnim = 1
		if instance_exists(baddiegrabbedID)
		{
			with baddiegrabbedID
			{
				if object_index != obj_player1 || object_index != obj_player2
				{
					/*
					instance_create(x, y, obj_slapstar)
					instance_create(x, y, obj_baddiegibs)
					global.combotime = 60
					global.pausecombotime = true
					obj_tv.alarm[1] = 75	
					global.hit = (global.hit + 1)
					other.baddiegrabbedID.instakilled = 1
					instance_destroy(other.baddiegrabbedID)*/
					instance_create(x, y, obj_slapstar)
					instance_create(x, y, obj_baddiegibs)
					flash = 1
					global.combotime = 60
					global.pausecombotime = true
					obj_tv.alarm[1] = 75			
					global.hit = (global.hit + 1)
					hp = 0
					alarm[1] = 5
					thrown = 1
					x = other.x
					y = other.y
					state = 106
					hsp = ((-image_xscale) * 10)
					vsp = -10	
				}
				else if object_index = obj_throwableparent
				{
					instance_create(x, y, obj_slapstar)
					instance_create(x, y, obj_baddiegibs)
					flash = 1
					hp -= 1
					alarm[1] = 5
					thrown = 1
					x = other.x
					y = other.y
					grabbed = false
					meatstate = meatballstate.stunned
					hsp = ((-image_xscale) * 10)
					vsp = -10					
				}
				else 
				{
					thrown = 1
					instance_create(x, y, obj_slapstar)
					instance_create(x, y, obj_baddiegibs)
					flash = 1
					x = other.x
					y = other.y
					state = 73
					hsp = ((-image_xscale) * 10)
					vsp = -10
					other.alarm[8] = 60
					other.alarm[7] = 120	
				}
			}
		}
	}
	jumpAnim = 1
	dashAnim = 1
	landAnim = 0
	machslideAnim = 1
	moveAnim = 1
	stopAnim = 1
	crouchslideAnim = 1
	crouchAnim = 1
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
	if (character == "N" && move != 0)
	    xscale = move
	image_speed = 0.35



}
