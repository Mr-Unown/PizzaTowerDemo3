if shrimptype = 0
pal_swap_set(spr_shrimp_palette, paletteselect, 0)
else
pal_swap_set(spr_shrimp_palette, paletteselect, 0)
var drawx = x
var drawy = y
if (shake == 1)
{
    drawx += random_range(-5, 5)
    drawy += random_range(-5, 5)
}
else
{
    drawx = x
    drawy = y
}
draw_sprite_ext(sprite_index, image_index, drawx, drawy, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
if flash
{
    shader_set(shd_hit)
    draw_sprite_ext(sprite_index, image_index, drawx, drawy, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
    shader_reset()
}
shader_reset()

