hsp = 0
if !place_meeting(x - xscale, y, obj_unclimbablewall) {
	vsp = 0
}
wallclingbuffer = 15

if sprite_index = spr_playerN_wallcling && floor(image_index) = image_number - 1
{
		scr_soundeffect(sfx_jump)
		scr_soundeffect(sfx_rollgetup)
		jumpstop = 0
		vsp = -15
		state = 58
		sprite_index = spr_playerN_spinjump
		image_index = 0
		with instance_create(x,y,obj_jumpdust)
			image_xscale = -other.xscale
}