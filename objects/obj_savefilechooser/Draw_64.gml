if (global.savefileselected = false)
{
    font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
    draw_set_font(font)
    draw_set_halign(fa_center)
    draw_set_color(c_white)
    draw_sprite_ext(spr_savefilebox,0,448,96,1,1,0,image_blend,1)
	draw_sprite_ext(spr_savefilebox,1,448,224,1,1,0,image_blend,1)	
	draw_sprite_ext(spr_savefilebox,2,448,352,1,1,0,image_blend,1)
    draw_text(448, 453, "PRESS UP AND DOWN TO\n SELECT THE SAVE FILE")
}
