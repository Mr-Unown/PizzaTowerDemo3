
mach2 = 0
jumpAnim = 1
dashAnim = 1
landAnim = 0
moveAnim = 1
stopAnim = 1
crouchslideAnim = 1
crouchAnim = 0
machhitAnim = 0
move = (key_right + key_left)

if jetpacking = true
{
	hsp = 3 * sign(move)
}
else
	hsp = 0
if (superspringjump != 1)
{
    if (sprite_index == spr_superjump)
        vsp = -15
    if (sprite_index == spr_player_supersidejump)
    {
        if (a < 25)
            a++
        hsp = (xscale * a)
        vsp = 0
    }
}
else if (superspringjump == 1)
{
    if (sprite_index == spr_superjump)
        vsp -= 0.5
}
if (scr_solid(x, (y - 1)) && (!place_meeting(x, (y - 1), obj_destructibles)))
{
    a = 0
    if (sprite_index == spr_player_supersidejump)
        sprite_index = spr_player_supersidejumpland
    if (sprite_index == spr_superjump)
        sprite_index = spr_superjumpland
    superspringjump = 0
    with (obj_camera)
    {
        shake_mag = 10
        shake_mag_acc = (30 / room_speed)
    }
    with (obj_baddie)
    {
        if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
        {
            image_index = 0
            if grounded
                vsp = -7
        }
    }
    scr_soundeffect(15)
    image_index = 0
    state = 93
    machhitAnim = 0
	jetpacking = false		
}
if (character == "V")
{
    if (floor(image_index) == 10 && sprite_index == spr_playerV_superjump)
    {
        sprite_index = spr_playerV_superjump
        image_index = 5
    }
}
if (superspringjump != 1)
{

	if (key_attack2 && jetpacking = true)
    {
		jetpacking = true		
		scr_soundeffect(sfx_noisewoah)
		state = "jetpackstart"
		image_index = 0
		sprite_index = spr_playerN_jetpackstart
		hsp = 0
		vsp = 0
		if move != 0
		  xscale = move
    }
	else if (key_jump2 && jetpacking = true)
    {
		jetpacking = false
		scr_soundeffect(sfx_jump)
		scr_soundeffect(sfx_rollgetup)
		jumpstop = false
		vsp = -15
		state = 58
		sprite_index = spr_playerN_spinjump
		image_index = 0
		with instance_create(x,y,obj_jumpdust)
			image_xscale = other.xscale
    }	
    else if (key_attack2 && global.coop == 0) && !(character == "N" && pogo = true) && jetpacking = false
    {
		jetpacking = false
        if (move != 0)
            xscale = move
        movespeed = 12
        machhitAnim = 0
        state = 91
        flash = 1
        sprite_index = spr_mach4
        with (instance_create(x, y, obj_jumpdust))
            image_xscale = other.xscale
    }	
	
	

}
image_speed = 0.5
scr_collide_player()
