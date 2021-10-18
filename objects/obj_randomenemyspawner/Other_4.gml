var _content = noone;
var _random = irandom_range(0,array_length(content))
_content = content[_random]
//Imposter
if !(ds_list_find_index(global.baddieroom, id) != -1)
{
	with (instance_create(x, y, _content))
	{
		image_xscale = other.image_xscale
		creatorid = other.id
		other.created = true
	}
}
if (ds_list_find_index(global.baddieroom, id) != -1)
	instance_destroy()