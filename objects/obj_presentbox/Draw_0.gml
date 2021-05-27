if character = 0
{
	pal_swap_set(spr_palette, paletteselect, false)
	draw_self();
	shader_reset()
}
else
	draw_self();