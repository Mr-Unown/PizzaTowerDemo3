if room = roomid 
{
//This should force the goop to land
var _solid = collision_line(x, y, x, y + room_height, obj_solid , false, true);
var _slope = collision_line(x, y, x, y + room_height, obj_slope, false, true);
var _platform = collision_line(x,  y, x, y +  room_height,  obj_platform, false, true);
if (_solid != noone || _slope != noone || _platform != noone)
{
	while (!grounded && (_solid != noone || _slope != noone || _platform != noone))
	{
		hsp = 0;
		vsp = 10;
		scr_collide();
		_solid = collision_line(x, y, x, y + room_height, obj_solid , false, true);
		_slope = collision_line(x, y, x, y + room_height, obj_slope, false, true);
		_platform = collision_line(x,  y, x, y +  room_height,  obj_platform, false, true);
	}
}
else if !grounded
	y = room_height + 32
hsp = 0
vsp = 0
roomx = x
roomy = y
var _sprite = sprite_index;
if _sprite != spr_goop_1 && _sprite != spr_goop_2 && _sprite != spr_goop_3 && _sprite != spr_goop_4  && _sprite != spr_goop_5
{
_sprite = choose(spr_goop_1,spr_goop_2,spr_goop_3,spr_goop_4,spr_goop_5)
image_index = 0
}
sprite = _sprite
image = image_index
}
maxspeed = 0