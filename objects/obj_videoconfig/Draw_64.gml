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
    draw_text_colour(680, 225 - 25, "1920X1080", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(680, 225 - 25, "1920X1080", c_white, c_white, c_white, c_white, 0.5)
	
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
if (optionsaved_hitstun == 0)
    draw_text_colour(300 - 15, 525 - 25, "DISABLED", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(300 - 15, 525 - 25, "DISABLED", c_white, c_white, c_white, c_white, 0.5)
if (optionsaved_hitstun == 1)
    draw_text_colour(480 + 5, 525 - 25, "STANDARD", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(480 + 5, 525 - 25, "STANDARD", c_white, c_white, c_white, c_white, 0.5)
if (optionsaved_hitstun == 2)
    draw_text_colour(680 + 5, 525 - 25, "DYNAMIC", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(680 + 5, 525 - 25, "DYNAMIC", c_white, c_white, c_white, c_white, 0.5)
/* Interpolation
if (optionselected == 4)
    draw_text_colour(480, 675 - 25, "MOTION BLUR", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(480, 675 - 25, "MOTION BLUR", c_white, c_white, c_white, c_white, 0.5)
	
if (optionsaved_interpolation == 1)
    draw_text_colour(380, 725 - 25, "ON", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(380, 725 - 25, "ON", c_white, c_white, c_white, c_white, 0.5)
if (optionsaved_interpolation == 0)
    draw_text_colour(580, 725 - 25, "OFF", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(580, 725 - 25, "OFF", c_white, c_white, c_white, c_white, 0.5)	