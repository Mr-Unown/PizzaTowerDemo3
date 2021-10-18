
if instance_exists(obj_water)
{
	if place_meeting(x,y,obj_player) 
	{
		activated = true
		with obj_water
		{
			targety = other.targety
		}
	}
	else if mode = 1 && activated = true && obj_water.targety != oldtargety
	{
		activated = false
		with obj_water
		{
			targety = other.oldtargety
		}
	}
}