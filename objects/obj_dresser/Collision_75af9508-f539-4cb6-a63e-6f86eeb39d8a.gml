/// @description Activate Changing room
if other.key_up2 && !instance_exists(obj_palettechanger)
{
	_player = other.id
	with instance_create(room_width/2,room_height/2,obj_palettechanger)	
	{
		player = other._player
	}	
	obj_player1.spotlight = (other.object_index == obj_player2 ? false : true)
	other.vsp = 20
	other.state = states.changing
	other.visible = false
	other.customupdate = true;
	var _depth = other.depth - 0.5
	other.paletteselect = sprite_get_width(other.spr_palette) - 1
	with (instance_create((other.x + random_range(-5, 5)), (other.y + random_range(-5, 5)), obj_balloonpop))
	{
		depth = _depth
		image_index = 0.35
		sprite_index = spr_bigpoofclouds
		image_angle = choose(0,90,180,270)
	}	
}
