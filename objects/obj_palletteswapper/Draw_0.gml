draw_self()

draw_set_font(font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.0123456789:", 1, 0))
draw_set_halign(fa_center)
draw_set_color(c_white)

draw_text(x, y - 32, palettename)