if (pause == 1 && (!instance_exists(obj_mainconfig)))
{
    draw_rectangle_color(-32, -32, 992, 572, c_black, c_black, c_black, c_black, 0)
    if (selected == 0)
        draw_sprite(spr_pausescreen, 0, 0, 0)
    if (selected == 1)
        draw_sprite(spr_pausescreen, 1, 0, 0)
    if (selected == 2)
        draw_sprite(spr_pausescreen, 2, 0, 0)
    if (selected == -1)
        draw_sprite(spr_pausescreen, 3, 0, 0)
}


