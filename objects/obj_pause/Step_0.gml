if ((!pause) && (!instance_exists(obj_fadeout)))
{
    if (obj_player.key_start && room != rank_room)
    {
        selected = 0
        if (!instance_exists(obj_pausefadeout))
            instance_create(x, y, obj_pausefadeout)
    }
}
if (instance_exists(obj_pausefadeout) && instance_exists(obj_fadeout))
    instance_destroy(obj_pausefadeout)
if (pause == 1)
{
    scr_getinput()
    application_surface_draw_enable(1)
    if (key_down2 && selected < 2)
    {
        selected += 1
        scr_sound(sound_land)
    }
    if (key_up2 && selected > 0)
    {
        selected -= 1
        scr_sound(sound_land)
    }
    if (key_jump && selected == 1)
    {
        var roomname = room_get_name(room)
            if (string_letters(roomname) == "steamy" || string_letters(roomname) == "steamy_secret")
            {
                instance_activate_all()
                room = steamy_1
                scr_playerreset()
                pause = 0
                obj_player.targetDoor = "A"
				scr_sound(mu_steamy)
                audio_sound_set_track_position(global.music, obj_music.fadeoff)
                obj_music.pausedmusic = mu_steamy
				global.music = mu_steamy
            }
	}
    if (key_jump2 && selected == 2)
    {
        pause = 0
        instance_activate_all()
        room = hub_public
        with (obj_player)
        {
            character = "P"
            scr_characterspr()
        }
        scr_playerreset()
        obj_player.state = 0
        global.cowboyhat = 0
        obj_player.targetDoor = "A"
    }
    if (key_jump2 && selected == 0)
    {
        if (!instance_exists(obj_pausefadeout))
            instance_create(x, y, obj_pausefadeout)
    }
}

if pause == 0
	pal = obj_player.paletteselect
