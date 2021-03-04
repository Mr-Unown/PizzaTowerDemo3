if (global.panic == 0)
{
    x = -100
    y = -100
    image_alpha = 0.43
}
else if (fadetopanic == 1)
{
    x = xstart
    y = ystart
    sprite_index = spr_minipillarwoke
    if (image_alpha < 1)
        image_alpha += 0.05
    else
        fadetopanic = 0
}
else
{
    mask_index = spr_minipillarwoke
    sprite_index = spr_minipillarwoke
    x = xstart
    y = ystart
    image_alpha = 1
}


