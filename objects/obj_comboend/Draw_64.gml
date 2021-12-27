draw_set_font(global.smallnumber)
draw_set_halign(fa_center)
draw_set_color(c_white)
var comboscore = player.storedscore
draw_sprite(endspr, 0, (player.x), (player.y - 75))
draw_text((player.x), (player.y - 45), string(comboscore))