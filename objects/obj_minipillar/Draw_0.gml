for (var o = 0; o < abs(image_yscale); o++)
{
    for (var z = 0; z < abs(image_xscale); z++)
        draw_sprite_ext(sprite_index, image_index, xstart + (32*z), ystart +(32*o), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}