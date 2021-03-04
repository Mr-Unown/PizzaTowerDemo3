if (global.panic == 0)
{
    x = xstart
    y = ystart
    image_alpha = 1
    mask_index = spr_minipillarwoke
}
else if (fadetopanic == 1)
{
    x = -100
    y = -100
    sprite_index = spr_minipillarsleep
    if (image_alpha > 0.43)
        image_alpha -= 0.05
    else
        fadetopanic = 0
}
else
{
    image_alpha = 0.43
    x = -100
    y = -100
    sprite_index = spr_minipillarsleep
}


