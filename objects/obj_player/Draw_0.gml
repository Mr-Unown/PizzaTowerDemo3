
pal_swap_set(spr_palette, paletteselect, 0)
draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha)
//draw_self()
shader_reset()
if flash
{
    shader_set(shd_hit)
    draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha)
    shader_reset()
}

if (flash == 1 && alarm[11] <= 0)
    alarm[11] = 5
shader_reset()
	
//draw_text(x, y - 50, state)

//draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, 1)