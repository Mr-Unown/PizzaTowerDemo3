var left = key_left
var right = key_right
if (windingAnim < 200)
    windingAnim++
if (character != "S")
    move = (key_left + key_right)
else if (character == "S")
{
    if (left != 0)
        move = 1
    if (right != 0)
        move = 1
    if (right == 0 && left == 0)
        move = 0
}
suplexmove = 0
vsp = (-wallspeed)
if !place_meeting(x + xscale, y, obj_unclimbablewall) {
	if (character != "S")
	{
		if (wallspeed < 24 && move == xscale)
			wallspeed += 0.05
	}
	else if (wallspeed < 24)
		wallspeed += 0.08
}
else {
	if wallspeed > 0
		wallspeed -= 0.5
	else
		wallspeed = 0
}
crouchslideAnim = 1
sprite_index = spr_machclimbwall
if (character != "S")
{
    if (!key_attack)
    {
        state = 0
        movespeed = 0
    }
}
else if (move == 0)
{
    state = 0
    movespeed = 0
}
if (scr_solid(x, (y - 1)) && (!place_meeting(x, (y - 1), obj_destructibles)) && (!place_meeting((x + sign(hsp)), y, obj_slope)) && (!place_meeting((x - sign(hsp)), y, obj_slope)))
{
    sprite_index = spr_superjumpland
    scr_soundeffect(15)
    image_index = 0
    state = 93
    machhitAnim = 0
}
if (!scr_solid((x + xscale), y))
{
    instance_create(x, y, obj_jumpdust)
    vsp = 0
	if (wallspeed >= 12 && global.coop == 0)
    {
        state = 91
        sprite_index = spr_mach4
		movespeed = wallspeed
    }
    else {
        state = 70
		movespeed = wallspeed
	}
}
if key_jump
{
    movespeed = clamp(floor(wallspeed /1.5),8,10)
    state = 70
    image_index = 0
    sprite_index = spr_walljumpstart
    if (character == "P")
        vsp = -11
    else
        vsp = -13
    xscale *= -1
    jumpstop = 0
}
if ((grounded && wallspeed <= 0) || wallspeed <= 0)
{
    state = 58
    sprite_index = spr_fall
}
image_speed = 0.6
if (!instance_exists(obj_cloudeffect))
    instance_create(x, (y + 43), obj_cloudeffect)