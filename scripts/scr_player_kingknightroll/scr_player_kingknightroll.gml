if (movespeed < 11 && grounded)
    movespeed += 0.5
else if (movespeed < 11 && (!grounded))
    movespeed += 0.5
if (scr_solid((x + 1), y) && xscale == 1 && (!place_meeting((x + sign(hsp)), y, obj_slope)) && (!place_meeting((x + xscale), y, obj_destructibles)))
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
    instance_create((x - 10), (y + 10), obj_bumpeffect)
}
if (scr_solid((x - 1), y) && xscale == -1 && (!place_meeting((x + sign(hsp)), y, obj_slope)) && (!place_meeting((x + xscale), y, obj_destructibles)))
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
    instance_create((x - 10), (y + 10), obj_bumpeffect)
}
if key_slap2
    bufferslap = 0
else if (bufferslap < 10)
    bufferslap++
if (floor(image_index) == (image_number - 1) && (!key_attack) && bufferslap >= 8 && sprite_index != spr_player_groundbashstart && sprite_index != spr_player_airbashstart)
{
    image_speed = 0.35
    state = 0
    grav = 0.5
}
if (floor(image_index) == (image_number - 1) && key_attack && sprite_index != spr_player_groundbashstart && sprite_index != spr_player_airbashstart)
{
    image_speed = 0.35
	if (character == "N" && pogo = true) && !key_slap2 
	{
		sprite_index = spr_playerN_pogostart
		state = "pogo"
		image_index = 0
		pogomovespeed = 9
	}
	else
    state = 70
    grav = 0.5
}
if (floor(image_index) == (image_number - 1) && bufferslap < 8 && suplexmove == 0 && sprite_index != spr_player_groundbashstart && sprite_index != spr_player_airbashstart)
{
    if (!grounded)
        suplexmove = 1
    movespeed = 8
    if (!grounded)
        vsp = -5
    image_index = 0
    if (character == "P")
        sprite_index = spr_player_faceplant
    if (character == "N")
    {
        sprite_index = spr_playerN_spin
        scr_soundeffect(126)
    }
    state = 111
    image_speed = 0.5
    with (instance_create(x, y, obj_jumpdust))
        image_xscale = other.xscale
    if (!instance_exists(crazyruneffectid))
    {
        with (instance_create(x, y, obj_crazyrunothereffect))
        {
            playerid = other.object_index
            other.crazyruneffectid = id
        }
    }
}
if (key_down && grounded && vsp > 0)
{
    grav = 0.5
    sprite_index = spr_crouchslip
    machhitAnim = 0
    state = 68
    movespeed = 15
}
if ((!instance_exists(obj_dashcloud2)) && grounded && movespeed > 5)
{
    with (instance_create(x, y, obj_dashcloud2))
        image_xscale = other.xscale
}
hsp = (xscale * movespeed)
move = (key_right + key_left)
if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_groundbashstart)
    sprite_index = spr_player_groundbash
if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_airbashstart)
    sprite_index = spr_player_airbash
if (sprite_index == spr_player_airbash && grounded)
    sprite_index = spr_player_groundbash
if (sprite_index == spr_player_groundbash && (!grounded))
    sprite_index = spr_player_airbash
if (key_jump && grounded)
{
	if (character == "N" && pogo = true) 
	{
		sprite_index = spr_playerN_pogostart
		state = "pogo"
		image_index = 0
		pogomovespeed = 9
		vsp = -11		
		instance_create(x, y, obj_jumpdust)		
	}
	else
	{
		sprite_index = spr_mach2jump
		state = 70
		grav = 0.5
		instance_create(x, y, obj_jumpdust)
		suplexmove = 0
		vsp = -11
	}
}
