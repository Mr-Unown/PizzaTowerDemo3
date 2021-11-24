with (obj_enemyportal)
{
    if (portalid == other.portalid)
        alarm[0] = 1
}
ds_list_add(global.baddieroom, id)
instance_destroy()
image_index = 1

