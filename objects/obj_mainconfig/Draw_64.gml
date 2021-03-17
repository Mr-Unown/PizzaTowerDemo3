draw_rectangle_color(-32, -32, 992, 572, c_black, c_black, c_black, c_black, 0)
//font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
draw_set_font(global.font)
draw_set_halign(fa_center)
draw_set_color(c_white)
if (optionselected == 0)
    draw_text_colour(480, 100, "VIDEO CONFIG", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(480, 100, "VIDEO CONFIG", c_white, c_white, c_white, c_white, 0.5)
if (optionselected == 1)
    draw_text_colour(480, 250, "AUDIO CONFIG", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(480, 250, "AUDIO CONFIG", c_white, c_white, c_white, c_white, 0.5)
if (optionselected == 2)
    draw_text_colour(480, 400, "KEY CONFIG", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(480, 400, "KEY CONFIG", c_white, c_white, c_white, c_white, 0.5)


