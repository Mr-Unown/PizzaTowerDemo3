function scr_player_mach2() {
	switch character {
		case "P":
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

			crouchslideAnim = 1
			if ((!key_jump2) && jumpstop == 0 && vsp < 0.5)
			{
			    vsp /= 2
			    jumpstop = 1
			}
			if (grounded && vsp > 0)
			    jumpstop = 0
			if (input_buffer_jump < 8 && grounded && (!(move == 1 && xscale == -1)) && (!(move == -1 && xscale == 1)) && key_attack)
			{
			    image_index = 0
			    sprite_index = spr_secondjump1
			    scr_sound(sound_jump)
			    vsp = -9
			}
			if grounded
			{
			    if (machpunchAnim == 0 && sprite_index != spr_mach && sprite_index != spr_player_mach3 && sprite_index != spr_player_machhit)
			    {
			        if (sprite_index != spr_player_machhit)
			            sprite_index = spr_mach
			    }
			    if (machpunchAnim == 1)
			    {
			        if (punch == 0)
			            sprite_index = spr_machpunch1
			        if (punch == 1)
			            sprite_index = spr_machpunch2
			        if (floor(image_index) == 4 && sprite_index == spr_machpunch1)
			        {
			            punch = 1
			            machpunchAnim = 0
			        }
			        if (floor(image_index) == 4 && sprite_index == spr_machpunch2)
			        {
			            punch = 0
			            machpunchAnim = 0
			        }
			    }
			}
			if (!grounded)
			    machpunchAnim = 0
			if (grounded && character == "P")
			{
			    if (mach2 < 100)
			        mach2 += 1.5
			    if (mach2 >= 100)
			    {
			        machhitAnim = 0
			        state = 83
			        flash = 1
			        sprite_index = spr_player_mach4
			        instance_create(x, y, obj_jumpdust)
			        if (movespeed < 12)
			            movespeed = 12
			    }
			}
			if key_jump
			    input_buffer_jump = 0
			if ((!key_attack) && grounded)
			{
			    scr_sound(sound_maximumspeedstop)
			    sprite_index = spr_machslidestart
			    state = 64
			    image_index = 0
			    mach2 = 0
			}
			if (move == -1 && xscale == 1 && grounded)
			{
				scr_sound(sound_maximumspeedstop)
			    sprite_index = spr_machslideboost
			    state = 64
			    image_index = 0
			    mach2 = 35
			}
			if (move == 1 && xscale == -1 && grounded)
			{
				scr_sound(sound_maximumspeedstop)
			    sprite_index = spr_machslideboost
			    state = 64
			    image_index = 0
			    mach2 = 35
			}
			if (key_down && grounded)
			{
			    sprite_index = spr_crouchslip
			    if (character == "P")
			        machhitAnim = 0
			    state = 61
			}
			if (scr_solid((x + 1), y) && xscale == 1 && (!place_meeting((x + 1), y, obj_slope)) && (!place_meeting((x + 1), y, obj_destructibles)) && (grounded || place_meeting((x + sign(hsp)), y, obj_railv)))
			{
			    scr_sound(sound_enemystomp)
			    movespeed = 0
			    state = 65
			    hsp = -2.5
			    vsp = -3
			    mach2 = 0
			    image_index = 0
			    instance_create((x + 10), (y + 10), obj_bumpeffect)
			}
				if machpunchAnim > 0
				{
				machpunchAnim -= 0.1
				}
			if (scr_solid((x - 1), y) && xscale == -1 && (!place_meeting((x - 1), y, obj_slope)) && (!place_meeting((x - 1), y, obj_destructibles)) && (grounded || place_meeting((x + sign(hsp)), y, obj_railv)))
			{
			    scr_sound(sound_enemystomp)
			    movespeed = 0
			    state = 65
			    hsp = 2.5
			    vsp = -3
			    mach2 = 0
			    image_index = 0
			    instance_create((x - 10), (y + 10), obj_bumpeffect)
			}
			if (!grounded)
			{
			    if (scr_solid((x + 1), y) && xscale == 1 && (!place_meeting((x + sign(hsp)), y, obj_slope)) && (!place_meeting((x + 1), y, obj_destructibles)))
			    {
			        wallspeed = movespeed
			        machhitAnim = 0
			        state = 10
			    }
			    else if (scr_solid((x - 1), y) && xscale == -1 && (!place_meeting((x + sign(hsp)), y, obj_slope)) && (!place_meeting((x - 1), y, obj_destructibles)))
			    {
			        wallspeed = movespeed
			        machhitAnim = 0
			        state = 10
			    }
			}
			if ((!instance_exists(obj_dashcloud)) && grounded)
			    instance_create(x, y, obj_dashcloud)
			if ((!grounded) && sprite_index != spr_secondjump2 && sprite_index != spr_mach2jump)
			    sprite_index = spr_secondjump1
			if (floor(image_index) == (image_number - 1) && sprite_index == spr_secondjump1)
			    sprite_index = spr_secondjump2
			if (key_slap2 && (!key_down) && suplexmove == 0)
			{
			    instance_create(x, y, obj_slaphitbox)
			    suplexmove = 1
			    vsp = 0
			    instance_create(x, y, obj_jumpdust)
			    image_index = 0
			    sprite_index = spr_suplexdash
			    state = 15
			    if (character == "DEEZNUTS")
			        vsp = -5
			}
			else if (key_shoot2)
			{
			    taunttimer = 20
			    tauntstoredmovespeed = movespeed
			    tauntstoredsprite = sprite_index
			    tauntstoredstate = state
			    state = 44
			    image_index = random_range(0, 6)
			    sprite_index = spr_player_taunt
			    instance_create(x, y, obj_taunteffect)
			}
			/*if key_shoot2
			{
			    vsp = -4
			    sprite_index = spr_player_pistolair
			    state = 32
			    image_index = 0
			    shoot = 1
			}*/
			image_speed = 0.65
		break
		/*case "DEEZNUTS":
			jumpspeed += 0.025 * move
			if (mach2 < 100)
				mach2 += 1.5
			move = (key_left + key_right)
			if (!scr_solid(x, (y + 1)))
			    hsp = (move * movespeed + jumpspeed)
			else
			    hsp = 0
			if (move == 0)
			    movespeed = 0
			if (move != 0 && movespeed < 6)
			    movespeed += 0.5
			if (((scr_solid((x + 1), y) && move == 1) || (scr_solid((x - 1), y) && move == 1) && move == -1)) && (!place_meeting((x + sign(hsp)), y, obj_slope))
			    movespeed = 0
			if (dir != xscale)
			{
			    dir = xscale
			    movespeed = 2
			}
			landAnim = 1
			if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
			{
			    vsp /= 2
			    jumpstop = 1
			}
			if (ladderbuffer > 0)
			    ladderbuffer--
			if (scr_solid(x, (y - 1)) && jumpstop == 0 && jumpAnim == 1)
			{
			    vsp = grav
			    jumpstop = 1
			}
			if (scr_solid(x, (y + 1)) && vsp > 0 && key_attack && sprite_index == spr_player_machfreefall)
			{
			    momemtum = 1
			    landAnim = 0
				if move != 0
				{
					sprite_index = spr_null_handstandjump1
					state = 83
				}
				else
				{
					sprite_index = spr_null_handstandjump1
					state = 63
				}
			    jumpAnim = 1
			    jumpstop = 0
			    image_index = 0
			    //if (!place_meeting(x, y, obj_water2))
			        instance_create(x, y, obj_landcloud)
			    freefallstart = 0
			    //audio_sound_gain(sound_land, 0.7, 0)
			    if (!audio_is_playing(sound_land))
			        audio_play_sound(sound_land, 1, false)
			}
			if (scr_solid(x, (y + 1)) && vsp > 0 && (!key_attack) && sprite_index == spr_player_machfreefall)
			{
			    if key_attack
			        landAnim = 0
			    state = 0
				jumpspeed = 0
			    jumpAnim = 1
			    jumpstop = 0
			    image_index = 0
			    //if (!place_meeting(x, y, obj_water2))
			        instance_create(x, y, obj_landcloud)
			    freefallstart = 0
			    audio_sound_gain(sound_land, 0.7, 0)
			    if (!audio_is_playing(sound_land))
			        audio_play_sound(sound_land, 1, false)
			}
			if (scr_solid(x, (y + 1)) && input_buffer_jump < 8 && vsp > 0 && sprite_index == spr_player_machfreefall)
			{
			    stompAnim = 0
			    vsp = -18
				if move != 0
				{
					sprite_index = spr_null_handstandjump1
					state = 83
				}
				else
				{
					sprite_index = spr_null_handstandjump1
					state = 63
				}
			    jumpAnim = 1
			    jumpstop = 0
			    image_index = 0
			   // if (!place_meeting(x, y, obj_water2))
			        instance_create(x, y, obj_landcloud)
			    freefallstart = 0
			    audio_play_sound(sound_jump, 1, false)
			}
			//if key_jump
			    //input_buffer_jump = 0
			if (sprite_index == spr_null_handstandjump1 && image_index > 3 && image_index < 4 && scr_solid(x, (y + 1)))
			{
			    instance_create(x, y, obj_highjumpcloud2)
			    vsp = -18
			    audio_play_sound(sound_jump, 1, false)
			}
			if (sprite_index == spr_null_handstandjump1 && floor(image_index) == (image_number - 1))
			    sprite_index = spr_player_machfreefall
			if (move != 0 && (!scr_solid(x, (y + 1))))
			    xscale = move
			image_speed = 0.35
			//scr_collideandmove()

		break*/
	}


}
