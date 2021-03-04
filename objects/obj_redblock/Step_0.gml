if (global.switchblock == 0)
{
    x = xstart
    y = ystart
    sprite_index = spr_redblock_active
    if (image_alpha < 1)
        image_alpha += 0.1
}
else
{
    x = -100
    y = -100
    sprite_index = spr_redblock_sleep
    if (image_alpha > 0.4)
        image_alpha -= 0.1
}



