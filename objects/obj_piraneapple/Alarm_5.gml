if (state == 96)
{
    with (instance_create(x, y, obj_aftereffectimage))
    {
        sprite_index = other.sprite_index
        image_xscale = other.image_xscale
    }
    flash = 1
}
alarm[5] = 10


