with (instance_create(x, y, obj_smallnumber))
    number = "1000"
global.collect += 1000
if(obj_player.character == "PI")
	scr_soundeffect(sfx_cronch)
scr_soundeffect(sfx_collectgiantpizza)
global.heattime = 80
if (global.pistolammo != 3)
	global.pistolammo += 1
var _x = (x - 48)
var _y = (y - 48)
var _xstart = _x
for (var yy = 0; yy < 4; yy++)
{
	for (var xx = 0; xx < 4; xx++)
	{
		instance_create(_x, _y, obj_collectpoint)
		_x += 16
	}
	_x = _xstart
	_y += 16
}   
instance_destroy()

