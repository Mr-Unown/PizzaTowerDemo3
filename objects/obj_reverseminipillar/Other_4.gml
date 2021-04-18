if (global.panic == 0)
{
    x = xstart
    y = ystart
    image_alpha = 1
    sprite_index = spr_minipillarwoke
    mask_index = spr_minipillarwoke
}
else
{
    image_alpha = 0.43
    x = -100
    y = -100
    sprite_index = spr_minipillarsleep
	mask_index = spr_masknull
}


