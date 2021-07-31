draw_set_alpha(fadealpha)
draw_set_color(c_white)
draw_rectangle(-32, -32, 992, 572, 0)
draw_set_alpha(1)



draw_set_font(global.font)
draw_set_halign(fa_center)
draw_set_color(c_yellow)
draw_text(xi, yi, string_hash_to_newline(message))


//Speedrun Timer
	ini_open("playerData_"+global.savefile+".ini");
	var ranks = ini_read_string("Ranks", string(global.levelname), "none"); 
	ini_close();
	if (ranks != "none") 
	{
		var tiny = ":"
		var tinier = ":"
		var tinyish = ":"
		if (global.bonusseconds < 10)
			tiny = ":0"
		if (global.bonusmiliseconds < 10)
			tinier = ":0"	
		if (global.bonusminutes < 10)
			tinyish = ":0"
		draw_set_color(c_white)
		draw_set_halign(fa_left)
		draw_set_font(global.smallfont)
		draw_text(823, 512, string_hash_to_newline(((string(global.bonushour) + string(tinyish) + string(global.bonusminutes) + string(tiny)) + string(global.bonusseconds) + string(tinier) + string(global.bonusmiliseconds))))
	}
