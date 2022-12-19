if (obj_player.state == 0 && obj_player.key_up && global.key_inv == 1 && place_meeting(x, y, obj_player))
{
    ds_list_add(global.saveroom, id)
    scr_sound(3)
    obj_player.state = 57
    obj_player.image_index = 0
    image_index = 0
    sprite_index = spr_doorvisited
    image_speed = 0.35
    instance_create((x + 50), (y + 50), obj_lock)
    global.key_inv = 0
}
with (obj_player)
{
    if (place_meeting(x, y, obj_keydoor) && other.sprite_index == spr_doorvisited && key_up && (state == 0 || state == 62 || state == 63 || state == 83) && y == (other.y + 50) && (!instance_exists(obj_noisesatellite)) && (!instance_exists(obj_fadeout)) && state != 71 && state != 57 && state != 54)
    {
        mach2 = 0
        image_index = 0
        obj_camera.chargecamera = 0
        targetDoor = other.targetDoor
        targetRoom = other.targetRoom
        state = 71
        instance_create(x, y, obj_fadeout)
    }
}
if (floor(image_index) == 2)
    image_speed = 0
if (floor(obj_player.image_index) == (obj_player.image_number - 1) && obj_player.state == 57)
{
    with (obj_player)
    {
        targetDoor = other.targetDoor
        targetRoom = other.targetRoom
        if (!instance_exists(obj_fadeout))
            instance_create(x, y, obj_fadeout)
    }
}
