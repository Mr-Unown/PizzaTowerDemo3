if (image_yscale > 2)
{
    draw_sprite_ext(sprite_index, 3, x, y, image_xscale, 1, image_angle, image_blend, image_alpha)
    for (var o = 1; o < abs((image_yscale - 1)); o++)
        draw_sprite_ext(sprite_index, 2, x, (y + (32 * o)), image_xscale, 1, image_angle, image_blend, image_alpha)
    draw_sprite_ext(sprite_index, 1, x, (y + (32 * abs((image_yscale - 1)))), image_xscale, 1, image_angle, image_blend, image_alpha)
}
else if (image_yscale == 2)
{
    draw_sprite_ext(sprite_index, 3, x, y, image_xscale, 1, image_angle, image_blend, image_alpha)
    draw_sprite_ext(sprite_index, 1, x, (y + 32), image_xscale, 1, image_angle, image_blend, image_alpha)
}
else
    draw_self()


