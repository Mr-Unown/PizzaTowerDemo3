if (global.panic == true && global.freezeframe = false)
{
	timer--
	if timer <= 0
	{
		with instance_create(random(room_width), -16, obj_debris)
		{
			image_speed = irandom_range(35,50) / 100
			sprite_index = spr_brickdebris
			vsp = 12
			rotatedirection = choose(-1,0,1)
			rotatevalue = irandom_range(-10,10)			
		}
		timer = 5;
	}
}
else if (global.panic == false)
	timer = 0;