if (dead == 0)
{
    instance_create(x, y, obj_key)
    dead = 1
    hsp = spd
    sprite_index = spr_pepperman_hurt
    image_speed = 0.35
    depth = -6
    var pepperhsp = (sign(hsp) * random_range(3, 6))
    repeat (5)
    {
        with (instance_create((x + random_range(-5, 5)), ((y + random_range(-5, 5)) + 32), obj_slimedebris))
        {
            sprite_index = spr_waterdrop
            hsp = (initialhsp + pepperhsp)
        }
    }
}

