
if localroom != room
{
	visible = false
}
else
visible = _visible

if ds_queue_size(position_queue) >= 2
{
	x = (ds_queue_dequeue(position_queue))
	y = (ds_queue_dequeue(position_queue))
}

if ds_queue_size(sprite_queue) >= 3
{
	sprite_index = (ds_queue_dequeue(sprite_queue))
	image_index = (ds_queue_dequeue(sprite_queue))
	image_xscale = (ds_queue_dequeue(sprite_queue))
}

