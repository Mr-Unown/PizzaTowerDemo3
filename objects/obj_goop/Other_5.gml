//This should force the goop to land
var _collision = collision_line(x, y, x, y + room_height, group_collision, false, true);
if (_collision != noone)
{
	while ((!grounded) && _collision != noone)
	{
		//var _dis = distance_to_point(x,_collision.y) fuck this is not workinf
		//var _dir = point_direction(x,y,x,y + room_height)
		//y = lengthdir_y((_dis),_dir) - sprite_get_height(mask_index) 
		hsp = 0;
		vsp = 10; //Well this works...
		scr_collide();
		_collision = collision_line(x, y, x, y + room_height, group_collision, false, true);
	}
}
else if !grounded
	y = room_height + 32
hsp = 0
vsp = 0
var _sprite;
_sprite = sprite_index;
if _sprite != spr_goop_1 && _sprite != spr_goop_2 && _sprite != spr_goop_3 && _sprite != spr_goop_4  && _sprite != spr_goop_5
{
	_sprite = choose(spr_goop_1,spr_goop_2,spr_goop_3,spr_goop_4,spr_goop_5)
	image_index = 0
}

sprite = _sprite;
image = image_index;
roomx = x;
roomy = y;
maxspeed = 0;
//FIX
if created = false
	ds_list_add(global.gooproom,[pooid,room,x,y,sprite,image,paletteselect])