if (global.panic == 0)
{
    var roomname = room_get_name(room)
    if (string_letters(roomname) == "hubroom" || string_letters(roomname) == "Titlescreen")
    {
        if (!audio_is_playing(mu_hub))
        {
            audio_stop_all()
            scr_sound(mu_hub)
            pausedmusic = mu_hub
			global.music = mu_hub
        }
    }
    if (string_letters(roomname) == "steamy")
	{
		for (i = 0; i < 20; i++)
        {
            if (roomname == ("steamy_" + string(i)) && i <= 6)
            {
                if (!audio_is_playing(mu_steamy))
                {
                    audio_stop_all()
                    scr_sound(mu_steamy)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = mu_steamy
					global.music = mu_steamy
                }
            }
            else if (roomname == ("steamy_" + string(i)) && i > 6)
            {
                if (!audio_is_playing(mu_steamyinner))
                {
                    audio_stop_all()
                    scr_sound(mu_steamyinner)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = mu_steamyinner
					global.music = mu_steamyinner
                }
            }
        }
	}
    if (string_letters(roomname) == "waffle")
    {
        if (!audio_is_playing(mu_waffle))
        {
            audio_stop_all()
            scr_sound(mu_waffle)
            pausedmusic = mu_waffle
			global.music = mu_waffle
        }
    }

}
