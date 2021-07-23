hsp = (xscale * movespeed)
if (sprite_index == spr_tumblestart)
    movespeed = 6
if (key_down2 && (!key_jump2))
    vsp = 10
//Slopes
if scr_slope() && vsp >= 0
{
	with (instance_place(x, (y + 1), obj_slope))
	{
		if other.movespeed > 8 && other.xscale == sign(image_xscale)
		{
			other.movespeed -= 0.25
		}
		else if other.movespeed < 20 && other.xscale == -sign(image_xscale)
			other.movespeed += 0.25
	}
}	
if ((!scr_slope()) && sprite_index == spr_tumblestart && floor(image_index) < 11)
    image_index = 11
if (sprite_index == spr_tumblestart && floor(image_index) == (image_number - 1))
{
    sprite_index = spr_tumble
	movespeed = 14
}
if (place_meeting((x + xscale), y, obj_solid) && (!place_meeting((x + hsp), y, obj_destructibles)))
{
    scr_soundeffect(38)
    hsp = 0
    movespeed = 0
    sprite_index = spr_tumbleend
    state = 72
    image_index = 0
}
if key_jump
    input_buffer_jump = 0
if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
{
    vsp /= 2
    jumpstop = 1
}
if (grounded && vsp > 0)
    jumpstop = 0
if (input_buffer_jump < 8 && grounded && hsp != 0)
    vsp = -9
if sprite_index != spr_tumble	
image_speed = 0.35
else
image_speed = (movespeed/14) * 0.35
