var roomname = room_get_name(room)
if (ds_list_find_index(global.saveroom, id) == -1 && global.snickchallenge == 0)
{
    global.secretfound = (global.secretfound + 1)
    with (obj_tv)
    {
		/*
        if (room == factory_0 || room == sewer_0 || room == golf_0 || room == freezer_0)
        {
            _message = (("YOU HAVE FOUND " + string(global.secretfound)) + " SECRET OUT OF 1")
            showtext = 1
            alarm[0] = 150
        }
        else if (string_letters(roomname) == "mansionsecret")
        {
            _message = (("YOU HAVE FOUND " + string(global.secretfound)) + " SECRET OUT OF 4")
            showtext = 1
            alarm[0] = 150
        }
		
        if (string_letters(roomname) == "desertsecret")
        {
            _message = (("YOU HAVE FOUND " + string(global.secretfound)) + " SECRET OUT OF 7")
            showtext = 1
            alarm[0] = 150
        }
        else if (string_letters(roomname) == "desertportal")
        {
            _message = "SUPER SECRET!!!"
            showtext = 1
            alarm[0] = 150
        }
		else
		*/
            _message = (("YOU HAVE FOUND " + string(global.secretfound)) + " SECRET OUT OF 6")
            showtext = 1
            alarm[0] = 150

		
    }
    scr_soundeffect(sfx_secretfound)
    ds_list_add(global.saveroom, id)
}


