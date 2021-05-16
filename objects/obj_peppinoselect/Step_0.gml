if (sprite_index == spr_peppinoselected && floor(image_index) == (image_number - 1))
    image_speed = 0
if global.savefileselected = true
{
if (blackblend < 255)
    blackblend += 5	
}
else
{
if blackblend > 0
	blackblend -= 10
}
image_blend = make_colour_hsv(0, 0,blackblend)

