#region Secret Eye stuff
//Spawn Secreteye when activated
if activated = true
{
	if visible == false
	{
		sprite_index = spr_secreteye_spawning;
		image_index = 0;
		visible = true;
	}
	if animation_end() && sprite_index == spr_secreteye_spawning
		sprite_index = spr_secreteye_idle
}
//Cutscene Moment
if sprite_index == spr_secreteye_teleport
{
	if animation_end() && once = false
	{
		event_user(0);
		once = true;
	}
}


#endregion
#region Door Stuff
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
#endregion
