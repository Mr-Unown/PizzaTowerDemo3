if room != outer_room1 && room != devroom && room != palroom && room != rank_room
{
	font = font_add_sprite_ext(spr_fontcollect, "0123456789", 1, 0)
	draw_set_font(font)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	pal_swap_set(obj_player.spr_palette, obj_player.paletteselect, 0)
	draw_sprite_ext(tvsprite, image_index, 832, 74, 1, 1, 1, c_white, alpha)
	shader_reset()
	draw_sprite_ext(invsprite, image_index, 700, 57, 1, 1, 1, c_white, alpha)
	draw_set_font(font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0))
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_text(xi, yi, string_hash_to_newline(message))
	


	    //draw_text(149, 105, string_hash_to_newline(global.collect))

	//if (global.combotime > 0)
	    //draw_text(832, 200, string_hash_to_newline(((string(global.hit) + " ") + "HIT")))
	//else
	    //global.hit = 0
	//draw_text(832, 300, tvcount)



		draw_sprite_ext(spr_tvcombo, image_index, 832, 74, 1, 1, 1, c_white, combofade)
		draw_set_font(font_add_sprite_ext(spr_fontcombo, "0123456789", 1, 0))
		draw_set_halign(fa_center)
		draw_set_color(c_white)
		draw_text_color(821, 52, string_hash_to_newline(global.combo), c_white, c_white, c_white, c_white, combofade)
}
draw_sprite(spr_barpop, 0, 806, 280)
var combotime = (global.combotime / 55)
draw_sprite_part(spr_barpop, 1, 0, 0, sprite_get_width(spr_barpop) * combotime, sprite_get_height(spr_barpop), 806, 280)
