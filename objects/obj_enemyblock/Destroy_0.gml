if (ds_list_find_index(global.saveroom, id) == -1)
{
    repeat (4)
    {
        with (instance_create((x + 32), (y + 32), obj_secretdebris))
        {
            mode = 2
            blendsprite = spr_enemyblock
        }
    }
    scr_soundeffect(3, 4)
    ds_list_add(global.saveroom, id)
}


