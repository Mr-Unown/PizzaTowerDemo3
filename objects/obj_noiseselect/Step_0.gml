if (sprite_index == spr_noiseselected && floor(image_index) == (image_number - 1))
    image_speed = 0
if global.savefileselected = true
{
if (c < 255)
    c += 5	
}
else
{
if c > 0
	c -= 10
}
image_blend = make_colour_hsv(0, 0, c)

