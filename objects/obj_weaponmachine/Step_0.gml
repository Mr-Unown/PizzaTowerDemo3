if (place_meeting(x, (y + 4), obj_player) && image_speed == 0)
{
	with instance_place(x,y+4,obj_player)
	{
		
		if pizzacoin >= 4
		{
			pizzacoin = (pizzacoin - 4)
			with other
			{
				scr_soundeffect(sfx_buyweapon)
				global.pausecombotime = true
				obj_tv.alarm[1] = 75
				image_speed = 0.35
				if (global.snickchallenge == 1)
					global.SAGEshotgunsnicknumber = (global.SAGEshotgunsnicknumber + 1)
			}
		}
	}
}


