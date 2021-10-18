//Draw Thing
if ((global.coop == 1 && playerid = obj_player2) || playerid = obj_player1) && !instance_exists(obj_fadeout)
{
    while (!ds_queue_empty(edge_indicator))
    {
        var _x = ds_queue_dequeue(edge_indicator)
        var _y = ds_queue_dequeue(edge_indicator)
        var _an = ds_queue_dequeue(edge_indicator)
        if (room != Scootertransition && room != Realtitlescreen && room != rank_room && room != strongcold_endscreen && room != leveltransitioncutscene && room != timesuproom && room != characterselect)
		{
			draw_sprite_ext(spr_arrowicon, 0, _x, _y, 1, 1, _an, c_white, 1)
            draw_sprite_ext(spr_arrow, 0, _x, _y, 1, 1, 0, c_white, 1)
		}
    }
}


