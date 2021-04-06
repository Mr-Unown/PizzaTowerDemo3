draw_set_font(global.font)
draw_rectangle_color(-32, -32, 992, 572, c_black, c_black, c_black, c_black, 0)
if (optionselected == -1)
    draw_text_colour(64, 25, "BACK", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(64, 25, "BACK", c_white, c_white, c_white, c_white, 0.5)
if (optionselected == 0)
    draw_text_colour(480, 25, "FULLSCREEN", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(480, 25, "FULLSCREEN", c_white, c_white, c_white, c_white, 0.5)
if (optionsaved_fullscreen == 0)
    draw_text_colour(380, 75, "ON", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(380, 75, "ON", c_white, c_white, c_white, c_white, 0.5)
if (optionsaved_fullscreen == 1)
    draw_text_colour(580, 75, "OFF", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(580, 75, "OFF", c_white, c_white, c_white, c_white, 0.5)
if (optionselected == 1)
    draw_text_colour(480, 175 - 25, "RESOLUTION", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(480, 175 - 25, "RESOLUTION", c_white, c_white, c_white, c_white, 0.5)
if (optionsaved_resolution == 0)
    draw_text_colour(300, 225 - 25, "480X270", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(300, 225 - 25, "480X270", c_white, c_white, c_white, c_white, 0.5)
if (optionsaved_resolution == 1)
    draw_text_colour(480, 225 - 25, "960X540", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(480, 225 - 25, "960X540", c_white, c_white, c_white, c_white, 0.5)
if (optionsaved_resolution == 2)
    draw_text_colour(680, 225 - 25, "1980X1080", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(680, 225 - 25, "1980X1080", c_white, c_white, c_white, c_white, 0.5)
if (optionselected == 2)
    draw_text_colour(480, 325 - 25, "MOTION BLUR", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(480, 325 - 25, "MOTION BLUR", c_white, c_white, c_white, c_white, 0.5)
if (optionsaved_panicbg == 1)
    draw_text_colour(380, 375 - 25, "ON", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(380, 375 - 25, "ON", c_white, c_white, c_white, c_white, 0.5)
if (optionsaved_panicbg == 0)
    draw_text_colour(580, 375 - 25, "OFF", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(580, 375 - 25, "OFF", c_white, c_white, c_white, c_white, 0.5)

if (optionselected == 3)
    draw_text_colour(480, 475 - 25, "HITSTUN", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(480, 475 - 25, "HITSTUN", c_white, c_white, c_white, c_white, 0.5)
if (optionsaved_hitstun == 1)
    draw_text_colour(380, 525 - 25, "ON", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(380, 525 - 25, "ON", c_white, c_white, c_white, c_white, 0.5)
if (optionsaved_hitstun == 0)
    draw_text_colour(580, 525 - 25, "OFF", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(580, 525 - 25, "OFF", c_white, c_white, c_white, c_white, 0.5)
