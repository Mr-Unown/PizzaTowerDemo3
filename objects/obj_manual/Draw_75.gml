//Ultimate Showdown of Ultimate Destiny
draw_sprite(spr_manual, i, 0, 0)
//Credits Stuff
if i >= sprite_get_number(spr_manual) - 1
{
	if !surface_exists(credits_surface)
	{
		credits_surface = surface_create(surface_width,surface_height);
		surface_set_target(credits_surface);
		draw_clear_alpha($f8f8f8,255);
		surface_reset_target();
	}
	else
	{
		surface_set_target(credits_surface);
		draw_clear_alpha($f8f8f8,255);
		draw_set_font(global.smallfont)
		draw_set_halign(fa_center)
		draw_text(surface_width/2,credits_y,string_upper(credits_text))
		draw_sprite(spr_manual_fade, 0, 0, 0)
		surface_reset_target();
		draw_surface(credits_surface,surface_x,surface_y);
	}

	draw_sprite(spr_manual_steam, -1, 0, 0)
}