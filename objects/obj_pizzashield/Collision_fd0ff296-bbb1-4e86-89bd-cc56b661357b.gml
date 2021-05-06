if !place_meeting(x,y,obj_weaponmachine)
{
with (other)
{
	if pizzashield = false
	{
		global.pausecombotime = true
		obj_tv.alarm[1] = 75
		pizzashield = true
		instance_destroy(other.id)
	}
	else if pizzashield = true
	{
		global.pausecombotime = true
		obj_tv.alarm[1] = 75
		pizzashieldbackup = pizzashieldbackup + 1
		instance_destroy(other.id)		
	}
}
}
