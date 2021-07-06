draw_set_font(global.smallnumber)
draw_set_halign(fa_center)
draw_set_color(c_white)

var shield = player.pizzashieldbackup + player.pizzashield
var drawy = (player.pizzacoinindicatorid.visible == true ? 44 : 60)
draw_sprite(spr_shieldbackupNEW, -1, (player.x - 35), (player.y - drawy))
draw_text((player.x + 15), (player.y - drawy), string(shield))


