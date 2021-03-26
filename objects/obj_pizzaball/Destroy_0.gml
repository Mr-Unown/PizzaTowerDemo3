if (ds_list_find_index(global.baddieroom, id) == -1)
{
    ds_list_add(global.baddieroom, id)
    scr_soundeffect(11)
    obj_tv.image_index = random_range(0, 4)
    scr_sleep()
    with (obj_camera)
    {
        shake_mag = 3
        shake_mag_acc = (3 / room_speed)
        golf = 0
    }
    var size = random_range(0.6, 1.2)
    repeat random_range(3, 5)
    {
        with (instance_create((other.x + random_range(-5, 5)), (other.y + random_range(-5, 5)), obj_slimedebris))
        {
            image_xscale = size
            image_yscale = image_xscale
        }
    }
    instance_create(x, (y + 30), obj_bangeffect)
    hsp = 0
    vsp = 0
}


