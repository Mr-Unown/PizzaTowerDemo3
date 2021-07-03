hsp = image_xscale * movespeed
x += hsp
y += vsp

if (scr_solid((x + sign(hsp)), y) && (!place_meeting((x + sign(hsp)), y, obj_destructibles))) && sprite_index != spr_peppinobulletbump
{
    sprite_index = spr_peppinobulletbump
	image_index = 0
	vsp = 0 
	hsp = 0
	movespeed = 0 
}
if sprite_index = spr_peppinobulletbump && floor(image_index) >= image_number - 1
{
	instance_destroy(id,false);
    with (instance_create(x, y, obj_baddie_dead))
	{
		canrotate = true
		image_xscale = other.image_xscale
        sprite_index = spr_peppinobulletdead
		vsp = irandom_range(4, -10)
		hsp = -image_xscale * irandom_range(10, 16)
		rotatedirection = choose(-1,1)
		rotatevalue = irandom_range(5,20)		
		
	}	
}
with (instance_place((x + hsp), y + vsp, obj_destructibles))
{
	if object_index != obj_onewaybigblock && object_index != obj_secretonewaybigblock
		instance_destroy()
	else if object_index = obj_onewaybigblock || object_index = obj_secretonewaybigblock
	{
		if sign(image_xscale) = 1 && other.x > x
			instance_destroy()
		else if sign(image_xscale) = -1 && other.x < x
			instance_destroy()
		else
			instance_destroy(other.id)
	}
}


if hp <= 0
	instance_destroy()
