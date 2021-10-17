if (sprite_index == spr_boxcrusher_fall)
{
    if (other.character != "S")
    {
        other.image_index = 0
        other.state = 72
        other.x = x
        other.y = y
    }
    else if (other.character == "S")
    {
        other.image_index = 0
        other.state = 72
        other.x = x
        other.y = (y - 16)
    }
}
if (sprite_index == spr_boxcrusher_land)
{
    if (other.character != "S")
    {
        other.image_index = 0
        other.hsp = 0
        other.vsp = 0
        other.x = x
        other.y = (y - 20)
        other.state = 15
        if (other.sprite_index != other.spr_boxxedintro)
        {
            other.sprite_index = other.spr_boxxedintro
            scr_soundeffect(sfx_killingblow)
            with (obj_camera)
            {
                shake_mag = 10
                shake_mag_acc = (30 / room_speed)
            }
        }
    }
    else if (other.character == "S")
    {
        instance_create(x, y, obj_stompeffect)
        other.image_index = 0
        other.state = 31
        if (other.sprite_index != other.spr_stunned)
        {
            other.sprite_index = other.spr_stunned
            scr_soundeffect(sfx_killingblow)
        }
        with (obj_camera)
        {
            shake_mag = 10
            shake_mag_acc = (30 / room_speed)
        }
    }
}


