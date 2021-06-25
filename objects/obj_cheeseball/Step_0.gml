var size = random_range(0.6, 1.2)
hsp = (image_xscale * movespeed)
if ((!scr_slope()) && place_meeting((x + sign(hsp)), y, obj_solid))
{
    repeat (8)
    {
        with (instance_create((other.x + random_range(-5, 5)), (other.y + random_range(-5, 5)), obj_slimedebris))
        {
            image_xscale = size
            image_yscale = image_xscale
        }
    }
    instance_destroy()
}
scr_collide()


