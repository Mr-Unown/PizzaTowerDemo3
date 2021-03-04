draw_self()
font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
draw_set_font(font)
draw_set_halign(fa_center)
draw_set_color(c_white)
ini_open("playerData_"+global.savefile+".ini")
if drawtext = true
{
	if (level != "snickchallenge")
	{
		draw_text(x, (y - 100), ini_read_string("Highscore", string(level), 0))
		draw_text(x, (y - 150), ini_read_string("Secret", string(level), 0) + " OF 6 SECRET")

		if ini_read_string("Toppin", string(level) + "1", 0) == 1
				draw_sprite(spr_pizzakinshroom, -1, (x - 75), (y - 200))
			else
	            draw_sprite(spr_pizzakinshroom_pause, -1, (x - 75), (y - 200))

		if ini_read_string("Toppin", string(level) + "2", 0) == 1
				draw_sprite(spr_pizzakincheese, -1, (x - 35), (y - 200))
			else
	            draw_sprite(spr_pizzakincheese_pause, -1, (x - 35), (y - 200))

		if ini_read_string("Toppin", string(level) + "3", 0) == 1
				draw_sprite(spr_pizzakintomato, -1, x, (y - 200))
			else
	            draw_sprite(spr_pizzakintomato_pause, -1, x, (y - 200))

		if ini_read_string("Toppin", string(level) + "4", 0) == 1
				draw_sprite(spr_pizzakinsausage, -1, (x + 35), (y - 200))
			else
	            draw_sprite(spr_pizzakinsausage_pause, -1, (x + 35), (y - 200))
	
		if ini_read_string("Toppin", string(level) + "5", 0) == 1
				draw_sprite(spr_pizzakinpineapple, -1, (x + 75), (y - 200))
			else
	            draw_sprite(spr_pizzakinpineapple_pause, -1, (x + 75), (y - 200))
	}
	else if (level == "snickchallenge")
    {
        draw_text(x, (y - 150), ini_read_string("Highscore", string(level), 0))
        if ini_read_string("Ranks", "snickchallenge", "none") != "none"
        {
            if ini_read_string("Ranks", "snickchallenge", "none") == "s"
                draw_text(x, (y - 100), "S RANK")
            if ini_read_string("Ranks", "snickchallenge", "none") == "a"
                draw_text(x, (y - 100), "A RANK")
            if ini_read_string("Ranks", "snickchallenge", "none") == "b"
                draw_text(x, (y - 100), "B RANK")
            if ini_read_string("Ranks", "snickchallenge", "none") == "c"
                draw_text(x, (y - 100), "C RANK")
            if ini_read_string("Ranks", "snickchallenge", "none") == "d"
                draw_text(x, (y - 100), "D RANK")
        }
        else
            draw_text(x, (y - 100), "NO RANK")
    }


}

