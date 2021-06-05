_initialhsp = 0
_initialvsp = 0
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
if place_meeting(x,y,group_pushables)
{
	with instance_place(x,y,group_pushables)
	{
		if thrown = true || state == "punch"
		{
		other.initialhsp = hsp / 2
		other.initialvsp = clamp(vsp / 1.3,-12,random_range(0,-5))
		}
	}
}
mask_index = sprite_index
image_speed = 0
vsp = random_range(-5, 0) + _initialvsp
grav = 0.3
depth = -1
initialhsp = random_range(-3, 3)
hsp = initialhsp + _initialhsp


