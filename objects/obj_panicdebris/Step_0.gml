if (global.panic == true && global.freezeframe = false)
{
	timer--
	if timer <= 0
	{
		with instance_create(random(room_width), 0, obj_debris)
		{
			image_speed = 0.35
			sprite_index = spr_brickdebris
		}
		timer = 5;
	}
}
else if (global.panic == false)
	timer = 0;