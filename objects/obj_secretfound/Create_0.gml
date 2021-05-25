//var roomname = room_get_name(room)
if (ds_list_find_index(global.saveroom, id) == -1 && global.snickchallenge == 0)
{
    global.secretfound = (global.secretfound + 1)
    with (obj_tv)
    {
		/*
        if (room == factory_0 || room == sewer_0 || room == golf_0 || room == freezer_0)
        {
            message = (("YOU HAVE FOUND " + string(global.secretfound)) + " SECRET OUT OF 1")
            showtext = 1
            alarm[0] = 150
        }
        else if (string_letters(roomname) == "mansionsecret")
        {
            message = (("YOU HAVE FOUND " + string(global.secretfound)) + " SECRET OUT OF 4")
            showtext = 1
            alarm[0] = 150
        }
        else if (string_letters(roomname) != "desertsecret")
        {
            message = (("YOU HAVE FOUND " + string(global.secretfound)) + " SECRET OUT OF 6")
            showtext = 1
            alarm[0] = 150
        }
        else if (string_letters(roomname) == "desertsecret")
        {
            message = (("YOU HAVE FOUND " + string(global.secretfound)) + " SECRET OUT OF 7")
            showtext = 1
            alarm[0] = 150
        }
		*/

            message = (("YOU HAVE FOUND " + string(global.secretfound)) + " SECRET OUT OF 6")
            showtext = 1
            alarm[0] = 150

		
    }
    scr_soundeffect(9)
    ds_list_add(global.saveroom, id)
}


