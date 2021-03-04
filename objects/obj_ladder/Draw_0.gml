if (image_yscale > 2)
{
    draw_sprite_ext(spr_ladder_top, -1, x, y, 1, 1, image_angle, image_blend, image_alpha)
    for (var o = 1; o < abs((image_yscale - 1)); o++)
        draw_sprite_ext(spr_ladder, -1, x, (y + (32 * o)), 1, 1, image_angle, image_blend, image_alpha)
    draw_sprite_ext(spr_ladder_bottom, -1, x, (y + (32 * abs((image_yscale - 1)))), 1, 1, image_angle, image_blend, image_alpha)
}
else if (image_yscale == 2)
{
    draw_sprite_ext(spr_ladder_top, -1, x, y, 1, 1, image_angle, image_blend, image_alpha)
    draw_sprite_ext(spr_ladder_bottom, -1, x, (y + 32), 1, 1, image_angle, image_blend, image_alpha)
}
else
    draw_self()


