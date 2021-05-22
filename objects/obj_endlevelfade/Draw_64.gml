draw_set_alpha(fadealpha)
draw_set_color(c_white)
draw_rectangle(-32, -32, 992, 572, 0)
draw_set_alpha(1)



draw_set_font(global.font)
draw_set_halign(fa_center)
draw_set_color(c_yellow)
draw_text(xi, yi, string_hash_to_newline(message))
