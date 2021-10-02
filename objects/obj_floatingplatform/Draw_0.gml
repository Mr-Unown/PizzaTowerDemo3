
draw_sprite_ext(spr_movingplatform, 0, x, y, 1, 1, image_angle, image_blend, image_alpha)
draw_sprite_ext(spr_movingplatform, 2, (x + (32 * (abs(image_xscale) - 1))), y, 1, 1, image_angle, image_blend, image_alpha)
for (var i = 1; i < abs(image_xscale) - 1; i++) 
{
    draw_sprite_ext(spr_movingplatform, 1, (x + (32 * i)), y, 1, 1, image_angle, image_blend, image_alpha)
}
draw_sprite_ext(spr_movingplatformmiddle, -1, (x + sprite_width / 2), y, 1, 1, image_angle, image_blend, image_alpha)