function scr_player_mach1() {
	switch character {
		case "P":
			dir = xscale
			move = (key_left + key_right)
			landAnim = 0
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
			}
			if (movespeed <= 8)
			    movespeed += 0.25
			machhitAnim = 0
			crouchslideAnim = 1
			if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
			    hsp = (xscale * movespeed)
			else if place_meeting(x, (y + 1), obj_railh)
			    hsp = ((xscale * movespeed) - 5)
			else if place_meeting(x, (y + 1), obj_railh2)
			    hsp = ((xscale * movespeed) + 5)
			if (grounded && xscale == 1 && move == -1)
			{
			    momemtum = 0
			    mach2 = 0
			    movespeed = 0
			    image_index = 0
			    xscale = -1
			}
			if (grounded && xscale == -1 && move == 1)
			{
			    momemtum = 0
			    mach2 = 0
			    movespeed = 0
			    image_index = 0
			    xscale = 1
			}
			if grounded
			{
			    if (mach2 < 35)
			        mach2++
			    if (mach2 >= 35)
			    {
			        movespeed = 10
			        state = 63
			        instance_create(x, y, obj_jumpdust)
			    }
			}
			sprite_index = spr_mach1
			if (!grounded)
			{
			    sprite_index = spr_airdash1
			    momemtum = 1
			    state = 51
			    jumpAnim = 0
			    image_index = 0
			}
			if ((!key_attack) && grounded)
			{
			    state = 0
			    image_index = 0
			    mach2 = 0
			}
			if key_down
			{
			    sprite_index = spr_crouchslip
			    state = 61
			    mach2 = 0
			}
			image_speed = 0.45
			if (key_jump && grounded && key_attack)
			{
			    scr_sound(sound_jump)
			    sprite_index = spr_airdash1
			    dir = xscale
			    momemtum = 1
			    vsp = -11
			    movespeed += 2
			    state = 51
			    jumpAnim = 1
			    image_index = 0
			}
			if ((!instance_exists(obj_dashcloud)) && grounded)
			    instance_create(x, y, obj_dashcloud)
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
		break
		/*case "DEEZNUTS":
			jumpspeed += 0.01 * move
			mach2 = 0
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
					state = 63
				}
				else
				{
					sprite_index = spr_null_handstandjumpbegin
					state = 62
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
			    vsp = -11
			    state = 0
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
			if (sprite_index == spr_null_handstandjump1 || sprite_index == spr_null_handstandjumpbegin && image_index > 3 && image_index < 4 && scr_solid(x, (y + 1)))
			{
			    instance_create(x, y, obj_highjumpcloud2)
			    vsp = -14
			    audio_play_sound(sound_jump, 1, false)
			}
			if (sprite_index == spr_null_handstandjump1 || spr_null_handstandjumpbegin && floor(image_index) == (image_number - 1))
			    sprite_index = spr_player_machfreefall
			if (move != 0 && (!scr_solid(x, (y + 1))))
			    xscale = move
			image_speed = 0.35
			//scr_collideandmove()
		break*/
	}


}
