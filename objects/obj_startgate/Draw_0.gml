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
		switch (selection)
		{
			case 1:
			#region Time Attack
			var time_ = ini_read_real("TimeAttack", string(level), 0), ta_mins = floor(time_), ta_sec = time_ - ta_mins;
			if ta_mins < 10
				ta_mins = "0" + string(ta_mins);
			if ta_sec < 10
				ta_sec = "0" + string(ta_sec);
			draw_text(x, (y - 100), "BEST TIME: " + string(ta_mins) + ":" + string(ta_sec))
			var laps_ = ini_read_real("Laps", string(level), 0)
			draw_text(x, (y - 150), string(laps_) + " LAPS OF 3");
			
			//Toppin Draw Simplification
			for (var i = 0; i < 5; ++i) 
			{
				var x_pos = -80 + (40 * i)
				var collected = ini_read_string("Toppin", string(level) + string(i + 1), 0)
				draw_sprite(toppin_sprs[i], collected, x + x_pos, y - 200);
			}
			#endregion			
			break;
			default:
			#region Default/Panic Attack
			draw_text(x, (y - 100), ini_read_string("Highscore", string(level), 0))
			draw_text(x, (y - 150), ini_read_string("Secret", string(level), 0) + " OF 6 SECRET")
			
			//Toppin Draw Simplification
			for (var i = 0; i < 5; ++i) 
			{
				var x_pos = -80 + (40 * i)
				var collected = ini_read_string("Toppin", string(level) + string(i + 1), 0)
				draw_sprite(toppin_sprs[i], collected, x + x_pos, y - 200);
			}

			#endregion
			break;
			
		}
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
            draw_text(x, (y - 200), "NO RANK")
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
