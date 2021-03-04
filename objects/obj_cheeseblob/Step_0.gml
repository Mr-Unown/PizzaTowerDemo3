if (scr_solid(x, (y + 1)) || scr_solid(x, (y - 1)) || scr_solid((x + 1), y) || scr_solid((x - 1), y))
{
    repeat (8)
        instance_create(x, (y + 20), obj_slimedebris)
    instance_destroy()
}
scr_collide()


