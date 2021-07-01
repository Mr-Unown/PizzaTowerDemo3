mach2 = 0
jumpAnim = 1
dashAnim = 1
landAnim = 0
moveAnim = 1
stopAnim = 1
crouchslideAnim = 1
crouchAnim = 0
machhitAnim = 0
movespeed = 0
facehurt = 1
start_running = 1
alarm[4] = 14
vsp = 0
hsp = 0
//TODO: make this work
if key_jump2 && floor(image_index) >= 2 && floor(image_index) != image_number - 1
{
	facehurt = 0
	jumpAnim = 0
    state = 58
    vsp = -12
    sprite_index = spr_machfreefall
	scr_soundeffect(sfx_jump)
	scr_soundeffect(sfx_rollgetup)
	with (instance_create(x, y, obj_highjumpcloud2))
		image_xscale = other.xscale
}
else if floor(image_index) == (image_number - 1) 
	state = 0
image_speed = 0.35
