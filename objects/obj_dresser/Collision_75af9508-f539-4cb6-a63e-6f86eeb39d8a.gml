if other.key_up2 && !instance_exists(obj_palettechanger)
{
	var _player = other.id
	with instance_create(room_width/2,room_height/2,obj_palettechanger)	
	{
		player = _player
	}	
	other.state = states.changing
	other.visible = false
	with (instance_create((other.x + random_range(-16, 16)), (other.y + random_range(-16, 16)), obj_balloonpop))
	{
		image_index = 0.35
		sprite_index = spr_dust_effect
	}	
}
