/// @description also hasty port

if active = true
{
	depth = -9999
	draw_set_color(c_black)
	draw_set_alpha(0.5)
	draw_rectangle(view_get_xport(0), view_get_yport(0), view_get_wport(0), view_get_hport(0), 0)
	
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_font(font0)
	//draw_text(431, 204, string(commands[b]))
	//draw_text(431, 260, "Press UP or DOWN to scroll through KEYBOARD COMMANDS")
	draw_text(431, 160, "Press F6 to close this menu")
	draw_text(431, 204, string(input))
	
	draw_set_halign(fa_left)
	
	draw_text(100, 80, "COMMAND LIST:")
	for(var i = 0; i < array_length_1d(commands); i++)
		draw_text(100, 100 + (i * 16), string(commands[i]))
	
	//if choosingdoor = true
	//	draw_text(431, 220, "TARGET DOOR: " + string(targetDoor))
		
	//if invalidbuffer > 0
	//	draw_text(431, 220, "INVALID ROOM!!")
}