if (current_arr > (array_length(content_arr) - 1))
{
	alarm[1] = 3 + 100
	alarm[3] = 60 + 100
    return;
}
var _content = content_arr[current_arr]
var dir = 1
if (current_arr % 2) == 0
    dir = 1
else
    dir = -1
with instance_create(x, y, _content)
{
    vsp = -8
    hsp = 2
	_dir = dir * other.image_xscale
}
current_arr++
alarm[0] = count
