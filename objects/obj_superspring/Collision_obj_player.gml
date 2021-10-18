with (other)
{
    if (state != 63)
    {
        if (state == 24 || state == 25 || state == 18)
        {
            with (instance_create(x, y, obj_knightdebris))
                image_index = 0
            with (instance_create(x, y, obj_knightdebris))
                image_index = 1
            with (instance_create(x, y, obj_knightdebris))
                image_index = 2
            with (instance_create(x, y, obj_knightdebris))
                image_index = 3
            with (instance_create(x, y, obj_knightdebris))
                image_index = 4
            with (instance_create(x, y, obj_knightdebris))
                image_index = 5
        }
        x = other.x
        if (state == 27)
            instance_create(x, y, obj_bombexplosion)
        scr_soundeffect(sfx_superjumprelease)
        sprite_index = spr_superjump
        state = 63
        vsp = -20
        other.image_index = 0
        other.image_speed = 0.35
        superspringjump = 1
        instance_create(x, y, obj_explosioneffect)
    }
}
with (obj_camera)
{
    shake_mag = 10
    shake_mag_acc = (30 / room_speed)
}


