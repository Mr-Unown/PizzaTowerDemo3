// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_pepperman_run(){
	if sprite_index == spr_playerP_shoulder && floor(image_index) == (image_number - 1)
	{
		image_index = 0
		sprite_index = spr_playerP_dash
	}
	dir = xscale
	move = (key_left + key_right)
	if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
	    hsp = (xscale * movespeed)
	else if place_meeting(x, (y + 1), obj_railh)
	    hsp = ((xscale * movespeed) - 5)
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = ((xscale * movespeed) + 5)
	if (move == (-xscale)) || grounded && hittingwall = 1
	{
		hittingwall = 0
		state = 0
	}
	if (xscale == -1) && (!scr_slope()) && (place_meeting((x + hsp), y, obj_solid) && !place_meeting((x + hsp), y, obj_destructibles))
	{
		with (obj_camera)
	    {
			shake_mag = 20
			shake_mag_acc = (40 / room_speed)
	    }
		hittingwall = 1
		movespeed = 0
		hsp = 2.5
		vsp = -4
		jumpstop = 1
	}
	if (xscale == 1) && (!scr_slope()) && (place_meeting((x + hsp), y, obj_solid) && !place_meeting((x + hsp), y, obj_destructibles))
	{
		with (obj_camera)
	    {
			shake_mag = 20
			shake_mag_acc = (40 / room_speed)
	    }
		hittingwall = 1
		movespeed = 0
		hsp = -2.5
		vsp = -4
		jumpstop = 1
	}

	image_speed = 1
	if (!grounded)
	{
		sprite_index = spr_playerP_dash
		image_index = 3
	}
	if (movespeed < 15 && hittingwall = 0)
	{
		movespeed += 0.5
	}
	if key_jump
	    input_buffer_jump = 0
	if ((!key_jump2) && ((jumpstop == 0) && (vsp < 0.5)))
	{
	    vsp /= 10
	    jumpstop = 1
	}
	if (grounded && (vsp > 0))
	    jumpstop = 0
	if ((input_buffer_jump < 8) && (grounded && ((!((move == 1) && (xscale == -1))) && (!((move == -1) && (xscale == 1))))))
	{
	    scr_soundeffect(sfx_jump)
	    vsp = -11
	}
}