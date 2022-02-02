if (image_index == 1 && global.panic == 0 && global.snickchallenge == 0)
{
    with (obj_player)
    {
        if (state == 61 && floor(image_index) == (image_number - 2))
        {
            scr_soundeffect(sfx_groundpound)
            with (obj_player1)
            {
                sprite_index = spr_Timesup
                image_index = 0
                with (obj_camera)
                {
                    shake_mag = 10
                    shake_mag_acc = (30 / room_speed)
                }
            }
            if (global.coop == 1)
            {
                with (obj_player2)
                {
                    sprite_index = spr_Timesup
                    image_index = 0
                    with (obj_camera)
                    {
                        shake_mag = 10
                        shake_mag_acc = (30 / room_speed)
                    }
                }
            }
            other.image_index = 0
            ds_list_add(global.saveroom, other.id)
        }
    }
}
with (obj_player)
{
    if (grounded && x > (other.x - 160) && x < (other.x + 160) && key_up && (state == 0 || state == 69 || state == 70 || state == 91) && (global.panic == 1 || global.snickchallenge == 1))
    {
		scr_endlevel();
    }
}


