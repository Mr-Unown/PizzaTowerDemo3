function scr_player_mach3() {

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
			mach2 = 100
			momemtum = 1
			move = (key_right + key_left)
			move2 = (key_right2 + key_left2)
			if (movespeed < 24 && move == xscale)
			{
			    movespeed += 0.05
			    if (!instance_exists(obj_crazyruneffect))
			        instance_create(x, y, obj_crazyruneffect)
			}
			else if (movespeed > 12 && move != xscale)
			    movespeed -= 0.05
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
			    scr_sound(sound_jump)
			    image_index = 0
			    sprite_index = spr_player_mach3jump
			    vsp = -9
			}
			if (sprite_index == spr_player_mach3jump && floor(image_index) == (image_number - 1))
			    sprite_index = spr_player_mach4
			if (movespeed > 20 && sprite_index != spr_player_crazyrun)
			{
			    flash = 1
			    sprite_index = spr_player_crazyrun
			}
			if (sprite_index == spr_player_crazyrun && (!instance_exists(obj_crazyrunothereffect)))
			    instance_create(x, y, obj_crazyrunothereffect)
			if key_jump
			    input_buffer_jump = 0
			if (key_up && grounded)
			{
			    scr_sound(28)
			    sprite_index = spr_player_superjumpprep
			    state = 58
			    hsp = 0
			    image_index = 0
			}
			if ((!key_attack) && grounded)
			{
			    scr_sound(sound_maximumspeedstop)
			    sprite_index = spr_player_machslidestart
			    state = 64
			    image_index = 0
			    mach2 = 0
			}
			if (move == -1 && xscale == 1 && grounded)
			{
				scr_sound(sound_maximumspeedstop)
			    sprite_index = spr_player_machslideboost3
			    flash = 0
			    state = 64
			    image_index = 0
			    mach2 = 100
			}
			if (move == 1 && xscale == -1 && grounded)
			{
				scr_sound(sound_maximumspeedstop)
			    sprite_index = spr_player_machslideboost3
			    flash = 0
			    state = 64
			    image_index = 0
			    mach2 = 100
			}
		#region Security system TAKES CONTROL OF SQUIDWARD'S HOUSE and begins ATTACKING THE CITY. Leaving the mayor to give Squidward community service for the damage he caused. EVEN THOUGH Spongebob and Patrick were in his house the WHOLE FUCKING TIME
			if (key_down && (!place_meeting(x, y, obj_dashpad)) && !grounded && sprite_index != spr_player_dive)
			{
			flash = 0
			state = 30
			vsp = 15
			}
				if (key_down && (!place_meeting(x, y, obj_dashpad)) && grounded)
				{
				flash = 0
				state = 30
				}
					if sprite_index = spr_player_dive && grounded
					{
					sprite_index = spr_player_mach4
					}
				if !key_down && sprite_index = spr_player_dive && !grounded
				{
				vsp = 15
				sprite_index = spr_player_mach4
				}
		#endregion
			if (scr_solid((x + 1), y) && xscale == 1 && (!place_meeting((x + sign(hsp)), y, obj_slope)) && (!place_meeting((x + sign(hsp)), y, obj_destructibles)) && (grounded || place_meeting((x + sign(hsp)), y, obj_railv)))
			{
			    scr_sound(sound_maximumspeedland)
			    with (obj_camera)
			    {
			        shake_mag = 20
			        shake_mag_acc = (40 / room_speed)
			    }
			    hsp = 0
			    image_speed = 0.35
			    with (obj_baddie)
			    {
			        if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
			        {
			            stun = 1
			            alarm[0] = 200
			            ministun = 0
			            vsp = -5
			            hsp = 0
			        }
			    }
			    flash = 0
			    combo = 0
			    state = 65
			    hsp = -2.5
			    vsp = -3
			    mach2 = 0
			    image_index = 0
			    instance_create((x + 10), (y + 10), obj_bumpeffect)
			}
			if (scr_solid((x - 1), y) && xscale == -1 && (!place_meeting((x + sign(hsp)), y, obj_slope)) && (!place_meeting((x + sign(hsp)), y, obj_destructibles)) && (grounded || place_meeting((x + sign(hsp)), y, obj_railv)))
			{
			    scr_sound(sound_enemystomp)
			    with (obj_camera)
			    {
			        shake_mag = 20
			        shake_mag_acc = (40 / room_speed)
			    }
			    hsp = 0
			    image_speed = 0.35
			    flash = 0
			    combo = 0
				sprite_index = spr_player_mach3hitwall
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
			if (!instance_exists(obj_chargeeffect)) && sprite_index != spr_player_dive
			    instance_create(x, y, obj_chargeeffect)
			if ((!instance_exists(obj_superdashcloud)) && grounded)
			    instance_create(x, y, obj_superdashcloud)
			if (key_slap2 && shotgunAnim == 1 && global.ammo > 0 && (!grounded))
			{
			    global.ammo -= 1
			    instance_create(x, (y + 80), obj_shotgunbulletdown)
			    vsp -= 11
			    sprite_index = spr_player_shotgunjump1
			    state = 31
			    image_index = 0
			}
			if (sprite_index == spr_player_mach4)
			    image_speed = 0.4
			if (sprite_index == spr_player_crazyrun)
			    image_speed = 0.75
			if (key_slap2 && (!key_down) && suplexmove == 0)
			{
			    instance_create(x, y, obj_slaphitbox)
			    suplexmove = 1
			    vsp = 0
			    instance_create(x, y, obj_jumpdust)
			    image_index = 0
			    sprite_index = spr_player_suplexdash
			    state = 15
			}
			else if (key_slap2 && key_down)
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
			mach2 = 0
			jumpAnim = 1
			dashAnim = 1
			landAnim = 0
			moveAnim = 1
			stopAnim = 1
			crouchslideAnim = 1
			crouchAnim = 0
			machhitAnim = 0
			move = xscale
			if sprite_index == spr_null
			{
			    if (movespeed < 25)
			        movespeed += 0.5
			}
			hsp = (xscale * movespeed)
			vsp = 0
			if sprite_index == spr_null && floor(image_index) == (image_number - 1)
			{
				sprite_index = spr_null
				movespeed = 15
			}
			if (scr_solid((x + hsp), y) && (!place_meeting((x + sign(hsp)), y, obj_slope)) && (!place_meeting((x + sign(hsp)), y, obj_destructibles)) && (grounded || place_meeting((x + sign(hsp)), y, obj_railv)))
			{
			    scr_sound(sound_enemystomp)
			    with (obj_camera)
			    {
			        shake_mag = 20
			        shake_mag_acc = (40 / room_speed)
			    }
			    hsp = 0
			    image_speed = 0.35
			    flash = 0
			    combo = 0
				sprite_index = spr_player_mach3hitwall
			    state = 65
			    hsp = 2.5
			    vsp = -3
			    mach2 = 0
			    image_index = 0
			    instance_create((x - 10), (y + 10), obj_bumpeffect)
			}
			image_speed = 0.5
			scr_collide_player()
		break*/
	}
	
	


}
