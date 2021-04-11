//Move
if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
    hsp = (xscale * movespeed)
else if place_meeting(x, (y + 1), obj_railh)
    hsp = ((xscale * movespeed) - 5)
else if place_meeting(x, (y + 1), obj_railh2)
    hsp = ((xscale * movespeed) + 5)
move = (key_right + key_left)
if (movespeed >= 0)
{
    if !grounded
        movespeed -= 0.1
	else if sprite_index != spr_breakdanceattack2ground
		movespeed -= 0.25
	else
		movespeed -= 0.35
}
//Mask
if sprite_index = spr_breakdanceattack1
	mask_index = spr_crouchmask
else
	mask_index = spr_player_mask
//Secondary Moves
if key_shoot2 && move = xscale && sprite_index != spr_breakdanceattack2start  && sprite_index != spr_breakdanceattack2 && sprite_index != spr_breakdanceattack2ground && sprite_index != spr_breakdanceattack2ground && sprite_index != spr_breakdanceattack1
{
	movespeed = 15
	image_index = 0
	sprite_index = spr_breakdanceattack2start 
	vsp = -5
	if (!instance_exists(crazyruneffectid))
    {
       with (instance_create(x, y, obj_crazyrunothereffect))
       {
			playerid = other.object_index
            other.crazyruneffectid = id
       }
    }
}
else if key_shoot2 && sprite_index != spr_breakdanceattack2start  && sprite_index != spr_breakdanceattack2 && sprite_index != spr_breakdanceattack2ground 
{
	if sprite_index != spr_breakdanceattack1
		movespeed = 10
	if movespeed < 15
		movespeed += 3
	else
		movespeed = 15
	sprite_index = spr_breakdanceattack1
}
//Uppercut
if key_slap2 && key_up && character = "P" && doublejump != 1 && sprite_index != spr_breakdanceattack2start 
{
	suplexmove = 1		
	suplexdashsnd = audio_play_sound(sfx_suplexdash, 1, false)
	audio_sound_gain(suplexdashsnd, (1 * global.soundeffectsvolume), 0)		
	doublejump = 1
	scr_soundeffect(sfx_jump)
	scr_soundeffect(sfx_rollgetup)
	jumpstop = 1
	jumpAnim = 1
	if movespeed < 3
	movespeed = 3
	momemtum = 1
	vsp = -10
	state = 58
	sprite_index = spr_player_shoryumineken		
	image_index = 0
}
if grounded && doublejump = 1 && vsp >= 0  && sprite_index != spr_player_shoryumineken	
doublejump = 0

//Hitwall
if sprite_index = spr_breakdanceattack2 || sprite_index = spr_breakdanceattack2start
{
#region Hitwall
if (scr_solid((x + xscale), y) && (!place_meeting((x + sign(hsp)), y, obj_slope)) && (!place_meeting((x + xscale), y, obj_destructibles)))
{
    sprite_index = spr_hitwall
    scr_soundeffect(15)
    scr_soundeffect(16)
    with (obj_camera)
    {
        shake_mag = 20
        shake_mag_acc = (40 / room_speed)
    }
    hsp = 0
    image_speed = 0.35
    with (obj_baddie)
    {
        if (grounded && point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0))))
        {
            vsp = -5
            hsp = 0
        }
    }
    flash = 0
    state = 72
    hsp = 2.5
    vsp = -3
    mach2 = 0
    image_index = 0
    instance_create((x - 10), (y + 16), obj_bumpeffect)
}
#endregion
}
if sprite_index = spr_breakdanceattack1
{
#region Bumpwall
if (scr_solid((x + xscale), y) && (!place_meeting((x + sign(hsp)), y, obj_slope)) && (!place_meeting((x + xscale), y, obj_destructibles)))
{
    instance_create((x + 10), (y + 16), obj_bumpeffect)
    xscale *= -1
}
#endregion
}
if sprite_index = spr_breakdanceattack2ground
{
#region Bumpwall
if (scr_solid((x + xscale), y) && (!place_meeting((x + sign(hsp)), y, obj_slope)) && (!place_meeting((x + xscale), y, obj_destructibles)))
{
	if movespeed > 5
		movespeed = 5
}
#endregion
}

//Image Speed
if sprite_index != spr_breakdanceattack1 {
	if breakdancebuffer > 35
	image_speed = 0.6
	else if breakdancebuffer > 20 && breakdancebuffer < 35
	image_speed = 0.45
	else
	image_speed = 0.35
}
else {
	image_speed = clamp((movespeed/15),0,1) * 0.6
}
landAnim = 0
//Sprites && Back to other states
if sprite_index = spr_breakdancestart && floor(image_index) = image_number - 1
{
	sprite_index = spr_breakdance
}
if floor(image_index) = image_number - 1 && sprite_index = spr_breakdanceattack2start
sprite_index = spr_breakdanceattack2

if grounded && sprite_index = spr_breakdanceattack2
sprite_index = spr_breakdanceattack2ground

if sprite_index = spr_breakdance && breakdancebuffer <= 15
{
	image_speed = 0.35
	image_index = 0
	sprite_index = spr_idle
	state = 0
	breakdancebuffer = 50
}
if sprite_index = spr_breakdanceattack2ground && movespeed <= 0
{
	image_speed = 0.35
	image_index = 0
	sprite_index = spr_idle
	state = 0
	breakdancebuffer = 50
}
if sprite_index = spr_breakdanceattack1 && movespeed <= 0
{
	image_speed = 0.35
	image_index = 0
	sprite_index = spr_idle
	state = 0
	breakdancebuffer = 50
}
//Effects
if ((!instance_exists(dashcloudid)) && grounded) && movespeed > 5
{
        with (instance_create(x, y, obj_dashcloud2))
        {
            image_xscale = other.xscale
            other.dashcloudid = id
        }
}


breakdancebuffer--