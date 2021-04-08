hsp = (image_xscale * movespeed)
mask_index = spr_player_mask
if scr_solid(x+hsp,y) {
	instance_create(x,y,obj_noiseexplosion)	
	instance_destroy()
}
if grounded && vsp >= 0
{
	instance_create(x,y,obj_noiseexplosion)	
	instance_destroy()
}
scr_collide()


