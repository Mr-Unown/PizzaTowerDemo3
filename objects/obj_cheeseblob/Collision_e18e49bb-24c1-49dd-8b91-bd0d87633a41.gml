with (other.id)
{
    if (state != 13 && hurted == 0)
    {
        hsp = 0
        movespeed = 0
        instance_create(x, y, obj_slimedebris)
        instance_create(x, y, obj_slimedebris)
        instance_create(x, y, obj_slimedebris)
        instance_create(x, y, obj_slimedebris)
        instance_create(x, y, obj_slimedebris)
        instance_create(x, y, obj_slimedebris)
        instance_create(x, y, obj_slimedebris)
        instance_create(x, y, obj_slimedebris)
        hurted = 1
        image_index = 0
        sprite_index = spr_cheesepep_intro
        state = 13
        bombpeptimer = 3
        scr_soundeffect(8)
        instance_destroy(other.id)
    }
    else
    {
        instance_create(x, y, obj_slimedebris)
        instance_create(x, y, obj_slimedebris)
        instance_create(x, y, obj_slimedebris)
        instance_create(x, y, obj_slimedebris)
        instance_create(x, y, obj_slimedebris)
        instance_create(x, y, obj_slimedebris)
        instance_create(x, y, obj_slimedebris)
        instance_create(x, y, obj_slimedebris)
        scr_soundeffect(8)
        instance_destroy(other.id)
    }
}


