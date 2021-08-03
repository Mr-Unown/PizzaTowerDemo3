if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
    hsp = (xscale * movespeed)
else if place_meeting(x, (y + 1), obj_railh)
    hsp = ((xscale * movespeed) - 5)
else if place_meeting(x, (y + 1), obj_railh2)
    hsp = ((xscale * movespeed) + 5)
if (movespeed >= 0 && grounded)
    movespeed -= 0.2
mask_index = spr_crouchmask
if key_jump
    input_buffer_jump = 0
if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
{
    vsp /= 10
    jumpstop = 1
}
if (input_buffer_jump < 8 && grounded && (!scr_solid((x + 27), (y - 32))) && (!scr_solid((x - 27), (y - 32))) && (!scr_solid(x, (y - 32))) && (!scr_solid(x, (y - 16))))
{
	sprite_index = spr_crouchslipjump
	image_index = 0
	vsp = -11
	with (instance_create(x, y, obj_superdashcloud))
    {
        image_xscale = other.xscale
        other.dashcloudid = id
    }
	/*
    scr_soundeffect(sfx_jump)
    sprite_index = spr_jump
    if (shotgunAnim == 1)
        sprite_index = spr_shotgunjump
    with (instance_create(x, y, obj_highjumpcloud2))
        image_xscale = other.xscale
    if (character == "P")
        vsp = -11
    else
        vsp = -13
    momemtum = movespeed
    state = 58
    image_index = 0
    jumpAnim = 1*/
}
if (grounded && key_attack && (!scr_solid((x + 27), (y - 32))) && (!scr_solid((x - 27), (y - 32))) && (!scr_solid(x, (y - 32))) && (!scr_solid(x, (y - 16))))
{
	if !(character == "N" && pogo = true)
	{
    scr_soundeffect(66)
    machhitAnim = 1
    machhitAnimtimer = 500
    rollmove = 1
    movespeed = 8
    state = 70
    mach2 = 35
    image_index = 0
    sprite_index = spr_rollgetup
	}
	else
	{
		sprite_index = spr_playerN_pogostart
		state = states.pogo
		image_index = 0
		pogomovespeed = 9
	}	
}
if grounded && vsp > 0 && (sprite_index == spr_crouchslipjump || sprite_index == spr_crouchslipfall) 
{
	jumpstop = 0
    sprite_index = spr_crouchslip
    
}
if sprite_index == spr_crouchslipjump && floor(image_index) = image_number - 1
    sprite_index = spr_crouchslipfall
if (movespeed <= 0)
{
    state = 66
    movespeed = 0
    mach2 = 0
    crouchslideAnim = 1
    image_index = 0
    crouchAnim = 1
    start_running = 1
    alarm[4] = 14
}
if (scr_solid((x + xscale), y) && !scr_slope_ext(x + sign(hsp),y) && (!place_meeting((x + sign(hsp)), y, obj_destructibles)))
{
    movespeed = 0
    state = 72
    hsp = -2.5 * xscale
    vsp = -3
    mach2 = 0
    image_index = 0
    machslideAnim = 1
    machhitAnim = 0
    instance_create((x + (10 * xscale)), (y + 10), obj_bumpeffect)
}/*
if (scr_solid((x - 1), y) && xscale == -1 && (!place_meeting((x + sign(hsp)), y, obj_slope)))
{
    movespeed = 0
    state = 72
    hsp = 2.5
    vsp = -3
    mach2 = 0
    image_index = 0
    machslideAnim = 1
    machhitAnim = 0
    instance_create((x - 10), (y + 10), obj_bumpeffect)
}*/
if ((!instance_exists(obj_slidecloud)) && grounded && movespeed > 5)
{
    with (instance_create(x, y, obj_slidecloud))
        image_xscale = other.xscale
}
image_speed = 0.4
