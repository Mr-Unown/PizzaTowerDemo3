smallnumber = font_add_sprite_ext(spr_smallnumber, "1234567890", 1, 0)
draw_set_font(smallnumber)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_sprite(spr_pizzacoin, -1, (player.x - 35), (player.y - 60))
draw_text((player.x + 15), (player.y - 60), string(global.pizzacoin))


