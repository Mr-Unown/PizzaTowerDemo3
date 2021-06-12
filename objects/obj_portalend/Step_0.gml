if global.timeattack = true
{
	if (global.panic == 0)
	{
		if activated = true
			image_alpha = approach(image_alpha,0.43,0.015)
	}
	else
	{
		if activated = true
			image_alpha = approach(image_alpha,1,0.015)
	}
}
if place_meeting(x, y, obj_doorA)
    targetDoor = "A"
if place_meeting(x, y, obj_doorB)
    targetDoor = "B"
if place_meeting(x, y, obj_doorC)
    targetDoor = "C"
if place_meeting(x, y, obj_doorD)
    targetDoor = "D"
if place_meeting(x, y, obj_doorE)
    targetDoor = "E"
if place_meeting(x, y, obj_doorF)
    targetDoor = "F"
if place_meeting(x, y, obj_doorG)
    targetDoor = "G"	


if global.timeattack = false
	instance_destroy();