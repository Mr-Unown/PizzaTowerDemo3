with (obj_player)
{
    if (key_up && (state == 0 || state == 62 || state == 63 || state == 83 || state == 58) && y == (other.y + 50) && (!instance_exists(obj_noisesatellite)) && (!instance_exists(obj_fadeout)) && state != 71 && state != 54)
    {
		sprite_index = spr_lookdoor
        mach2 = 0
        obj_camera.chargecamera = 0
        ds_list_add(global.saveroom, id)
        targetDoor = other.targetDoor
        targetRoom = other.targetRoom
        other.visited = 1
        image_index = 0
        state = 71
        instance_create(x, y, obj_fadeout)
    }
}
