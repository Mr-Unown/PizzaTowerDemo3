if (ds_list_find_index(global.saveroom, id) == -1)
{
    instance_create(x, y, obj_bangeffect)
    instance_create(x, y, obj_safeexplosion)
    with (instance_create(x, y, obj_pizzaslice))
        _dir = 1
    with (instance_create(x, y, obj_pizzaslice))
        _dir = -1
    repeat (6)
    {
        with (instance_create(x, y, obj_debris))
        {
            vsp = -5
            sprite_index = spr_tvdebris
        }
    }
    ds_list_add(global.saveroom, id)
}


