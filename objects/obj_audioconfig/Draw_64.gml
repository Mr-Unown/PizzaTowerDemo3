var _cam_x = camera_get_view_x(view_camera[0])
var _cam_y = camera_get_view_y(view_camera[0])
draw_rectangle_color(-32, -32, 992, 572, c_black, c_black, c_black, c_black, 0)
if (optionselected == -1)
    draw_text_colour(64, 25, "BACK", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(64, 25, "BACK", c_white, c_white, c_white, c_white, 0.5)
if (optionselected == 0)
    draw_text_colour(480, 25, "MASTER VOLUME", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(480, 25, "MASTER VOLUME", c_white, c_white, c_white, c_white, 0.5)
if (optionselected == 1)
    draw_text_colour(480, 175, "MUSIC VOLUME", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(480, 175, "MUSIC VOLUME", c_white, c_white, c_white, c_white, 0.5)
if (optionselected == 2)
    draw_text_colour(480, 325, "SOUNDEFFECTS VOLUME", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(480, 325, "SOUNDEFFECTS VOLUME", c_white, c_white, c_white, c_white, 0.5)
if (optionselected != -1)
{
    draw_sprite_part(spr_volumebar_empty, 0, 0, 0, sprite_width, sprite_height, draw_x, (draw_y - sprite_get_yoffset(spr_volumebar_empty)))
    draw_sprite_part(spr_volumebar_filled, 0, 0, 0, (sprite_width * value), sprite_height, draw_x, (draw_y - sprite_get_yoffset(spr_volumebar_empty)))
    draw_sprite(spr_volumeknob, 0, (draw_x + (sprite_width * value)), draw_y)
}


