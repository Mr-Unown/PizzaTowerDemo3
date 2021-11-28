with other.id 
{
	if instance_exists(obj_water) && other.y >= obj_water.bbox_top || room = factory_5
	{
		#region Below Water
		if (hurted == 0 && cutscene == 0 && state != 114 && state != 113 && state != 27 && sprite_index != spr_bombpep_end && state != 63 && state != 65) && (distance_to_point(other.x,other.y) >= 10 || other.bombjump = true)
		{
			image_index = 0
			hurted = 1
			global.pausecombotime = true			
			obj_tv.alarm[1] = 75		
			sprite_index = spr_hurt
			var _direction = point_direction(other.x,other.y,x,y)
			playerdirection = (round(_direction / 90) * 90)
			if other.bombjump = true
				playerdirection = 90
			movespeed = 14;
			scr_soundeffect(sfx_bombpep2)
			state = states.newbomb			
		}
		else if (state != 114 && state != states.newbomb && state != 113) && character = "V"
		{
			vsp = -2
			scr_hurtplayer(object_index)
		}		
		else if (hurted == 0 && cutscene == 0 && state != states.newbomb && state != 114 && state != 113 && state != 27 && sprite_index != spr_bombpep_end && state != 63 && state != 65)
		{
			image_index = 0
			hurted = 1
			vsp = -4
			global.pausecombotime = true			
			obj_tv.alarm[1] = 75		
			sprite_index = spr_bombpepend
			state = 27
			bombpeptimer = 0
		}
		#endregion
	}
	else
	{
		#region Above Water
if (character != "V")
{
    if (hurted == 0 && cutscene == 0 && state != states.newbomb && state != 114 && state != 113 && state != 27 && sprite_index != spr_bombpep_end && state != 63 && state != 65)
    {
        if (state == 24 || state == 25)
        {
            scr_soundeffect(sfx_loseknight)
            with (instance_create(x, y, obj_knightdebris))
                image_index = 0
            with (instance_create(x, y, obj_knightdebris))
                image_index = 1
            with (instance_create(x, y, obj_knightdebris))
                image_index = 2
            with (instance_create(x, y, obj_knightdebris))
                image_index = 3
            with (instance_create(x, y, obj_knightdebris))
                image_index = 4
            with (instance_create(x, y, obj_knightdebris))
                image_index = 5
            if (x != other.x)
                hsp = (sign((x - other.x)) * 5)
        }
        image_index = 0
        hurted = 1
        vsp = -4
		global.pausecombotime = true			
		obj_tv.alarm[1] = 75		
        sprite_index = spr_bombpepend
        state = 27
        bombpeptimer = 0
    }
}
else if (state != 114 && state != states.newbomb && state != 113)
{
    vsp = -2
    scr_hurtplayer(object_index)
}
#endregion
	}
}