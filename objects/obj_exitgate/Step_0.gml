if (global.panic == 1)
    sprite_index = spr_enterexitgate
if (place_meeting(x, y, obj_player) && obj_player.state != 54 && sprite_index = spr_enterexitgate && global.panic == 0)
{
    ds_list_add(global.saveroom, id)
    sprite_index = spr_exitgateclosing
    with (obj_camera)
    {
        shake_mag = 3
        shake_mag_acc = (3 / room_speed)
    }
    obj_player.state = 44
    obj_player.image_index = 0
    obj_player.sprite_index = obj_player.spr_Timesup
}

if sprite_index = spr_exitgateclosing && floor(image_index) == (image_number - 1)
	sprite_index = spr_exitgateclosed