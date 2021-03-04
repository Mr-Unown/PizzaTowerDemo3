if (ds_list_find_index(global.saveroom, id) == -1)
{
    instance_create((x + 16), y, obj_debris)
    instance_create((x + 16), y, obj_debris)
    instance_create((x + 16), y, obj_debris)
    instance_create((x + 16), y, obj_debris)

    scr_soundeffect(3, 4)
    ds_list_add(global.saveroom, id)
    var roomname = room_get_name(room)
    if (string_letters(roomname) != "PProom")
    {
        var pizzacoin = random_range(1, 100)
        if (pizzacoin >= 90)
        {
            with (instance_create(x, y, obj_pizzacoin))
                hsp = choose(-2, 2)
        }
    }
}


