switch jetpacking
{
case false:
#region Roll
if (!place_meeting(x, (y + 1), obj_railh))
    hsp = (xscale * movespeed)
else if place_meeting(x, (y + 1), obj_railh)
    hsp = ((xscale * movespeed) - 5)
else if place_meeting(x, (y + 1), obj_railh2)
    hsp = ((xscale * movespeed) + 5)
mach2 = 100
machslideAnim = 1
move = (key_right + key_left)
if (machhitAnim == 1 || rollmove == 1)
{
    if (character != "P")
        machhitAnim = 0
    else
    {
        if (machhitAnimtimer > 0)
            machhitAnimtimer -= 5
        if (machhitAnimtimer <= 0)
        {
            machhitAnimtimer = 500
            machhitAnim = 0
            rollmove = 0
        }
    }
}
if (!grounded)
{
    machhitAnimtimer = 500
    machhitAnim = 0
}
if (machhitAnim == 0)
    rollmove = 0
if (scr_solid((x + 1), y) && xscale == 1 && (!place_meeting((x + sign(hsp)), y, obj_slope)) && (!place_meeting((x + sign(hsp)), y, obj_destructibles)))
{
    scr_soundeffect(16)
    hsp = 0
    image_speed = 0.35
    flash = 0
    combo = 0
    state = 72
    hsp = -2.5
    vsp = -3
    mach2 = 0
    image_index = 0
    instance_create((x + 10), (y + 10), obj_bumpeffect)
}
if (scr_solid((x - 1), y) && xscale == -1 && (!place_meeting((x + sign(hsp)), y, obj_slope)) && (!place_meeting((x + sign(hsp)), y, obj_destructibles)))
{
    scr_soundeffect(16)
    hsp = 0
    image_speed = 0.35
    flash = 0
    combo = 0
    state = 72
    hsp = 2.5
    vsp = -3
    mach2 = 0
    image_index = 0
    instance_create((x - 10), (y + 10), obj_bumpeffect)
}
if ((!instance_exists(dashcloudid)) && grounded)
	with instance_create(x,y + 43,obj_cloudeffect)
	{
		image_xscale = other.xscale
		other.dashcloudid = id
	}
if grounded
    sprite_index = spr_machroll
else if (sprite_index != spr_dive)
{
    sprite_index = spr_dive
    vsp = 10
}
image_speed = 0.8
//Breakdance Roll
if (key_shoot2) && character != "V"
{
	breakdancebuffer = 50
    scr_soundeffect(sfx_rollgetup)
	scr_soundeffect(sfx_breakdance)
	movespeed = 13
	sprite_index = spr_breakdanceattack1
    state = states.breakdance
	with instance_create(x, y, obj_dashcloud2)
       image_xscale = other.xscale
    image_index = 0
	
}
if ((!key_down) && (!scr_solid((x + 27), (y - 32))) && (!scr_solid((x - 27), (y - 32))) && (!scr_solid(x, (y - 32))) && (!scr_solid(x, (y - 16))))
{
    image_index = 0
    scr_soundeffect(sfx_rollgetup)
    state = 70
    if (character != "S")
        sprite_index = spr_rollgetup
}
#endregion
break;
case true:
#region Jetpack
hsp = (xscale * movespeed)
mach2 = 100
move = (key_right + key_left)
if (scr_solid((x + 1), y) && xscale == 1 && (!place_meeting((x + sign(hsp)), y, obj_slope)) && (!place_meeting((x + sign(hsp)), y, obj_destructibles)))
{
	jetpacking = false
    scr_soundeffect(16)
    hsp = 0
    image_speed = 0.35
    flash = 0
    combo = 0
    state = 72
    hsp = -2.5
    vsp = -3
    mach2 = 0
    image_index = 0
    instance_create((x + 10), (y + 10), obj_bumpeffect)
}
if (scr_solid((x - 1), y) && xscale == -1 && (!place_meeting((x + sign(hsp)), y, obj_slope)) && (!place_meeting((x + sign(hsp)), y, obj_destructibles)))
{
	jetpacking = false	
    scr_soundeffect(16)
    hsp = 0
    image_speed = 0.35
    flash = 0
    combo = 0
    state = 72
    hsp = 2.5
    vsp = -3
    mach2 = 0
    image_index = 0
    instance_create((x - 10), (y + 10), obj_bumpeffect)
}
if ((!key_down || !grounded) && (!scr_solid((x + 27), (y - 32))) && (!scr_solid((x - 27), (y - 32))) && (!scr_solid(x, (y - 32))) && (!scr_solid(x, (y - 16))))
{
	image_index = 0
	scr_soundeffect(sfx_rollgetup)
    state = states.jetpack
	sprite_index = spr_jetpack
}
if ((!instance_exists(dashcloudid)) && grounded)
	with instance_create(x,y + 43,obj_cloudeffect)
	{
		image_xscale = other.xscale
		other.dashcloudid = id
	}
image_speed = 0.8	
#endregion
break;
}