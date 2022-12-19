with (obj_player)
{
    if (key_up && grounded && (state == 0 || state == 62 || state == 63 || state == 83) && (!instance_exists(obj_noisesatellite)) && (!instance_exists(obj_fadeout)) && state != 57 && state != 54)
    {
        mach2 = 0
        obj_camera.chargecamera = 0
        ds_list_add(global.saveroom, id)
        image_index = 0
        state = 57
    }
}
if (floor(obj_player.image_index) == (obj_player.image_number - 1) && obj_player.state == 57)
{
    with (obj_player)
    {
        targetDoor = other.targetDoor
        targetRoom = other.targetRoom
        if (!instance_exists(obj_fadeout))
            instance_create(x, y, obj_fadeout)
    }
	obj_tv.tvsprite = spr_tvturnon
	obj_tv.image_index = 0
}
