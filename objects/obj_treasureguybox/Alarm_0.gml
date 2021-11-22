if (current_arr > (array_length(content_arr) - 1))
{
	alarm[1] = 3
	alarm[3] = 60
    return;
}
var _content = content_arr[current_arr]
var _hsp = 0
if ((current_arr % 2) == 0)
    _hsp = 2
else
    _hsp = -2
with (instance_create(x, y, _content))
{
    vsp = -8
    hsp = _hsp
}
current_arr++
alarm[0] = count
