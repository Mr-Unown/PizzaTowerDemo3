draw_set_font(global.smallnumber)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_set_alpha(_visible)
draw_sprite(spr_pizzacoin, -1, (player.x - 35), (player.y - 60))
draw_text((player.x + 15), (player.y - 60), string(player.pizzacoin))
draw_set_alpha(1)

