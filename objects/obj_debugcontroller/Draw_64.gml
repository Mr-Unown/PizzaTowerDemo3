/// @description Draw Some Shit

if active = true
{
	//Draw Background
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(-32,-32,960 + 32,540 + 32,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_font(font0);
	//Text
	draw_text(431, 160, "Press F6 to close this menu");
	draw_text(431, 204, string(input));
	var length = -(string_width(string(input))/ 2) + string_width(string(input));
	draw_text(431 + length + 3, 204, cursor);
	
	
	//Command List
	draw_set_halign(fa_left)
	draw_text(100, 80 - 64, "COMMAND LIST:")
	for(var i = 0; i < array_length_1d(commands); i++)
		draw_text(100, 100  - 64 + (i * 16), string(commands[i]))
	
}

