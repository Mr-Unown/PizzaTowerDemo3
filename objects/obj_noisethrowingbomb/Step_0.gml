hsp = (image_xscale * movespeed)
mask_index = spr_player_mask
if scr_solid(x+hsp,y) {
	image_xscale *= -1
}
if grounded && vsp >= 0
{
	with instance_create(x,y,obj_noiseexplosion)	{
		playerid = other.playerid
	}
	instance_destroy()
}
scr_collide()


