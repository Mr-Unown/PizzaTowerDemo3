with (instance_create(x, y,  obj_baddie_dead))
{
    scr_soundeffect(11)
    sprite_index = other.sprite_index
    image_xscale = other.image_xscale
}
instance_destroy()


