draw_self()
//font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:"_pause, 1, 0)
draw_set_font(global.font)
draw_set_halign(fa_center)
draw_set_color(c_white)
if drawtext = true
{
	ini_open("playerData_"+global.savefile+".ini")
	
	if (level != "snickchallenge")
	{
		draw_text(x, (y - 100), ini_read_string("Highscore", string(level), 0))
		draw_text(x, (y - 150), ini_read_string("Secret", string(level), 0) + " OF 6 SECRET")

		if ini_read_string("Toppin", string(level) + "1", 0) == 1
				draw_sprite(spr_pizzakinshroom_pause, 1,(x - 75), (y - 200))
			else
	            draw_sprite(spr_pizzakinshroom_pause, 0, (x - 75), (y - 200))

		if ini_read_string("Toppin", string(level) + "2", 0) == 1
				draw_sprite(spr_pizzakincheese_pause, 1,(x - 35), (y - 200))
			else
	            draw_sprite(spr_pizzakincheese_pause, 0, (x - 35), (y - 200))

		if ini_read_string("Toppin", string(level) + "3", 0) == 1
				draw_sprite(spr_pizzakintomato_pause, 1,x, (y - 200))
			else
	            draw_sprite(spr_pizzakintomato_pause, 0, x, (y - 200))

		if ini_read_string("Toppin", string(level) + "4", 0) == 1
				draw_sprite(spr_pizzakinsausage_pause, 1,(x + 35), (y - 200))
			else
	            draw_sprite(spr_pizzakinsausage_pause, 0, (x + 35), (y - 200))
	
		if ini_read_string("Toppin", string(level) + "5", 0) == 1
				draw_sprite(spr_pizzakinpineapple_pause, 1,(x + 75), (y - 200))
			else
	            draw_sprite(spr_pizzakinpineapple_pause, 0, (x + 75), (y - 200))
	}
	else if (level == "snickchallenge")
    {
        draw_text(x, (y - 100), ini_read_string("Highscore", string(level), 0))
		var rescued = min(ini_read_real("Rescued", string(level), 0), 15)
		draw_text(x, (y - 150), string(rescued) + " OF 15 TOPPINS")
		
        if ini_read_string("Ranks", "snickchallenge", "none") != "none"
        {
            if ini_read_string("Ranks", "snickchallenge", "none") == "p"
                draw_text(x, (y - 200), "P RANK")			
            if ini_read_string("Ranks", "snickchallenge", "none") == "s+"
                draw_text(x, (y - 200), "S+ RANK")			
            if ini_read_string("Ranks", "snickchallenge", "none") == "s"
                draw_text(x, (y - 200), "S RANK")
            if ini_read_string("Ranks", "snickchallenge", "none") == "a"
                draw_text(x, (y - 200), "A RANK")
            if ini_read_string("Ranks", "snickchallenge", "none") == "b"
                draw_text(x, (y - 200), "B RANK")
            if ini_read_string("Ranks", "snickchallenge", "none") == "c"
                draw_text(x, (y - 200), "C RANK")
            if ini_read_string("Ranks", "snickchallenge", "none") == "d"
                draw_text(x, (y - 200), "D RANK")
        }
        else
            draw_text(x, (y - 100), "NO RANK")
    }

	ini_close()
}
if selected = true
{
	ini_open("playerData_"+global.savefile+".ini")
	if ini_read_string("Ranks", string(level), "none") != "none" && string(level) != "snickchallenge"
		draw_sprite_ext(spr_attackselect,selection,x,y,1,1,0,c_white,1)
	ini_close()		
}
