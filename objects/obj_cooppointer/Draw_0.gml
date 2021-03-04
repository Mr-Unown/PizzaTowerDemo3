//Draw Thing
if (global.coop == 1)
{
    while (!ds_queue_empty(edge_indicator))
    {
        var _x = ds_queue_dequeue(edge_indicator)
        var _y = ds_queue_dequeue(edge_indicator)
        var _an = ds_queue_dequeue(edge_indicator)
        if (room != Scootertransition && room != characterselect)
		{
			draw_sprite_ext(spr_arrowicon, 0, _x, _y, 1, 1, _an, c_white, 1)
            draw_sprite_ext(spr_arrow, 0, _x, _y, 1, 1, 0, c_white, 1)
		}
    }
    while (!ds_queue_empty(edge_indicator2))
    {
        var _x2 = ds_queue_dequeue(edge_indicator2)
        var _y2 = ds_queue_dequeue(edge_indicator2)
        var _an2 = ds_queue_dequeue(edge_indicator2)
        if (room != Scootertransition && room != characterselect)
		{
			draw_sprite_ext(spr_arrowicon, 0, _x2, _y2, 1, 1, _an2, c_white, 1)
            draw_sprite_ext(spr_arrow2, 0, _x2, _y2, 1, 1, 0, c_white, 1)
		}
    }
}


