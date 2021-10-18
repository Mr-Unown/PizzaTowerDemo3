if (global.panic == 0)
{
    x = -100
    y = -100
    image_alpha = 0.43
	mask_index = spr_masknull
	sprite_index = spr_minipillarsleep
}
else
{
    mask_index = spr_minipillarwoke
    sprite_index = spr_minipillarwoke
    x = xstart
    y = ystart
    image_alpha = 1
}