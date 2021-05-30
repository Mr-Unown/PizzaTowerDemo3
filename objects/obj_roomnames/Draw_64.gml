//smallfont = font_add_sprite_ext(spr_smallerfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.:?1234567890", 1, 0)
if message != noone
{
draw_set_font(global.smallfont)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_set_alpha(alpha)
var _draw_y = draw_y
if global.newhud = true
	_draw_y = newdraw_y

draw_sprite(spr_roomnamebackground,0,draw_x,_draw_y)
draw_set_alpha(1)
if string_width(string_upper(message)) <= maxwidth
	draw_text(draw_x, _draw_y, string_upper(message))
else
	draw_text_ext(draw_x, _draw_y - 6, string_upper(message),-1,maxwidth)
}