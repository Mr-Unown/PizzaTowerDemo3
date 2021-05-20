initialhsp = 0
initialvsp = 0
mask_index = spr_bigpizzadebris
if place_meeting(x,y,obj_player)
{
	with instance_place(x,y,obj_player)
	{
		other.initialhsp = hsp / 1.3
		other.initialvsp = clamp(vsp / 1.3,-12,random_range(0,-5))
	}
}
image_index = random_range(0, 2)
image_speed = 0
vsp = random_range(-4, 0) + initialvsp
hsp = random_range(-4, 4) + initialhsp
grav = 0.3
image_angle = random_range(1, 270)
depth = -1


