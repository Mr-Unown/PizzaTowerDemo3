if (global.panic == 1 && turned == false) && can_turn = true
{
    image_xscale *= -1
	x = xstart - (image_xscale * 32)
    turned = 1
}