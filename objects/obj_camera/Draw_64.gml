if room != outer_room1 && room != devroom && room != palroom && room != rank_room
{
	pal_swap_set(spr_heatpal, heatpal, 0)
	draw_sprite_part_ext(spr_heatmeterunder, obj_stylebar.image_index, 0, 0, global.style * 4.25, sprite_get_height(spr_heatmeterunder), -6, 8, 1, 1, c_white, 1)
	draw_sprite_ext(spr_heatmeter, obj_stylebar.image_index, 128, 96, 1, 1, 0, c_white, 1)
	draw_sprite_ext(spr_cakehud, obj_stylebar.image_index, 128, 96, 1, 1, 0, c_white, 1)
	shader_reset()
	draw_set_font(font_add_sprite_ext(spr_fontcollect, "0123456789", 1, 0))
	draw_set_halign(fa_center)
	draw_set_color(c_white)

	draw_text(125, 29 + obj_stylebar.hudbounce, string_hash_to_newline(global.collect))
}
//sage stuff, not much else to say. wonder if we can get some special sprites made for this
font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
    draw_set_font(font)
    draw_set_halign(fa_center)
    draw_set_color(c_white)
    if (global.panic == 1)
    {
        if (global.seconds < 10)
        {
            if (global.minutes < 1)
                draw_set_color(c_red)
            else
                draw_set_color(c_white)
            draw_text((random_range(1, -1) + 480), (random_range(1, -1) + 65), string_hash_to_newline(((string(global.minutes) + ":0") + string(global.seconds))))
        }
        else if (global.seconds >= 10)
        {
            if (global.minutes < 1)
                draw_set_color(c_red)
            else
                draw_set_color(c_white)
            draw_text((random_range(1, -1) + 480), (random_range(1, -1) + 65), string_hash_to_newline(((string(global.minutes) + ":") + string(global.seconds))))
        }
    }