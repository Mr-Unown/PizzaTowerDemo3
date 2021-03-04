for (var i = 0; i < abs(image_xscale); i++)
    draw_sprite_ext(spr_water, -1, (x + (32 * i)), y, 1, 1, image_angle, image_blend, alpha)
for (var o = 1; o < abs(image_yscale); o++)
{
    for (var z = 0; z < abs(image_xscale); z++)
        draw_sprite_ext(spr_water2, -1, (x + (32 * z)), (y + (32 * o)), 1, 1, image_angle, image_blend, alpha)
}

