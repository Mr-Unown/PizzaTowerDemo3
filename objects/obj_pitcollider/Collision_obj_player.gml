with other.id
{
	if state != 55 && !instance_exists(obj_fadeout) && !place_meeting(x,y,obj_hallway) && !place_meeting(x,y,obj_pitfall) //&& y <= (room_height * 1.3)
	{	
	global.pausecombotime = true
	obj_tv.alarm[1] = 75		
	x = roomstartx
	y = roomstarty + 200
	visible = true
	state = states.climbing
	grav = 0.5
	}
}


	

