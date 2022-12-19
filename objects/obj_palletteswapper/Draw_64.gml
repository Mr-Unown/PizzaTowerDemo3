//if bgblend > 0
//{
if drawing = 1
	//draw_sprite_ext(bg_palswap, 0, 0, 0, 1, 1, 0, c_white, bgblend)
	//draw_sprite_ext(placeholder, 0, 0, fally, 1, 1, 0, c_white, 1)
	//draw_sprite_ext(spr_palswap, 0, 0, 0, 1, 1, 0, c_white, bgblend)
	draw_set_font(font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.0123456789:", 1, 0))
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	//if fally == 0
	draw_text_color(312, 142, palettename, c_white, c_white, c_white, c_white, textblend)
//}

//draw_sprite_ext(palsel, image_index, 672, 288, 1, 1, 0, c_white, bgblend)
