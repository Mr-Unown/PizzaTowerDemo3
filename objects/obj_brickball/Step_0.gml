hsp = (image_xscale * movespeed)
if (afterimagebuffer > 0)
	    afterimagebuffer--
if (scr_solid((x + sign(hsp)), y) && !(scr_slope() && !scr_solid(x + sign(hsp),y - 2)) && (!place_meeting((x + sign(hsp)), y, obj_destructibles))) 
{
	with instance_create(x,y,obj_brickseparated)	
	{
		playerid = other.playerid
		sprite_index = spr_brickread
	}
	with instance_create(x,y,obj_balloonpop)
		sprite_index = spr_bangeffect
	with (obj_camera)
	    {
	        shake_mag = 10
	        shake_mag_acc = (30 / room_speed)
	    }
	instance_destroy()
}
if afterimagebuffer <= 0
{
	    with instance_create(x, y, obj_clearafterimg)
		{
			image_index = (other.image_index - 1)
			image_xscale = other.image_xscale
			sprite_index = other.sprite_index
		}
	    afterimagebuffer = 4
	}
scr_collide()