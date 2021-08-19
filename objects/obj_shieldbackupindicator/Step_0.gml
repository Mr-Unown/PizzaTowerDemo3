var weapon = instance_nearest(player.x,player.y,obj_weaponmachine);
if instance_exists(obj_weaponmachine) && point_distance(weapon.x,weapon.y,player.x,player.y) <= 1024
    show = 75;
	
if (show == 0)
{
    visible = false
	_visible = 1
	blink_time = 0;
	blink_length = 5;
	blink_alpha = 0;	
}
if (show > 0)
{
    show -= 1
    visible = true
	if show <= 32 
	{
		//set image_alpha
		if blink_time++ > blink_length _visible = blink_alpha else _visible = 1;

		//reset time
		if blink_time > blink_length * 2 blink_time = 0;
	}	
}
blink_length = 30*(show/32);

//Shield
if oldshield != (player.pizzashieldbackup + player.pizzashield)
{
	show = 75
	oldshield = (player.pizzashieldbackup + player.pizzashield)
}