initialhsp = 0
initialvsp = 0
mask_index = spr_maskdebris
rotatedirection = choose(-1,0,1)
rotatevalue = irandom_range(-5,5)
if place_meeting(x,y,obj_player)
{
	with instance_place(x,y,obj_player)
	{
		other.initialhsp = hsp / 2
		other.initialvsp = clamp(vsp / 1.3,-12,random_range(0,-5))
	}
}
mask_index = sprite_index
image_index = random_range(0, 2)
image_speed = 0
vsp = random_range(-4, 0) + initialvsp
hsp = random_range(-4, 4) + initialhsp
grav = 0.3
image_angle = random_range(1, 270)
depth = -1


