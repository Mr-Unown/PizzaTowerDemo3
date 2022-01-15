pal_swap_set(spr_palette, paletteselect, 0)
var drawx = x
var drawy = y
var xscale = (abs(image_xscale) + (squashval)) * sign(image_xscale)
var yscale = image_yscale - squashval
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
draw_sprite_ext(sprite_index, image_index, drawx, drawy + (46* squashval), xscale, yscale, enemydraw_angle, image_blend, image_alpha)
if flash
{
    shader_set(shd_hit)
    draw_sprite_ext(sprite_index, image_index, drawx, drawy+ (46* squashval) , xscale, yscale, enemydraw_angle, image_blend, image_alpha)
    shader_reset()
}
shader_reset()

