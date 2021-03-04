var drawx = x
var drawy = y
drawx += random_range(-1, 1)
drawy += random_range(-1, 1)
pal_swap_set(spr_palette, paletteselect, 0)
draw_sprite_ext(sprite_index, image_index, drawx, drawy, image_xscale, image_yscale, image_angle, image_blend, gonealpha)
if (sprite_index == spr_player_taunt && floor(image_index) == 11)
    draw_sprite_ext(spr_promotion, image_index, drawx, drawy, 1, image_yscale, image_angle, image_blend, gonealpha)
shader_reset()
