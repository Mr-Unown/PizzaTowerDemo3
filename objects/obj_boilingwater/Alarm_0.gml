var _x = x;
var _y = y;
for (var o = 0; o < abs(image_yscale); o++)
{
    for (var z = 0; z < abs(image_xscale); z++)
		_x = x + (random_range(0,32) * z)
		_y = y + (random_range(0,32) * o)
}

with instance_create(_x,_y,obj_waterbubble) {
		depth = -11
}
alarm[0] = random_range(15,50)