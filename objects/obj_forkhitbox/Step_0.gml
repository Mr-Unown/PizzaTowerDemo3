var player = instance_nearest(x, y, obj_player)
if (!instance_exists(ID))
    instance_destroy()
if instance_exists(ID)
{
    x = ID.x
    y = ID.y
    image_xscale = ID.image_xscale
    image_index = ID.image_index
    with (ID)
    {
        if (object_index == obj_forknight || object_index == obj_indiancheese || object_index == obj_noisey)
        {
            if (state != 102)
            {
                hitboxcreate = 0
                instance_destroy(other.id)
            }
        }
        if (object_index == obj_indiancheese)
        {
            if (state != 102 && sprite_index != spr_indiancheese_spotted)
            {
                hitboxcreate = 0
                instance_destroy(other.id)
            }
        }
        if (object_index == obj_boulder)
        {
            if (hitwall == 0)
                instance_destroy(other.id)
        }
        if (object_index == obj_snickexe)
        {
            if (player.instakillmove == 1 || player.state == 22)
            {
                instance_destroy(other.id)
                hitboxcreate = 0
            }
        }
        if (object_index == obj_noisecrusher)
        {
            if (state != 95)
            {
                hitboxcreate = 0
                instance_destroy(other.id)
            }
        }
        if (object_index == obj_pizzice)
        {
            if (state != 96 || scared == 1)
            {
                hitboxcreate = 0
                instance_destroy(other.id)
            }
        }
		if object_index = obj_shrimpred
		{
			if sprite_index != spr_shrimp_punch
			{
				hitboxcreate = 0
                instance_destroy(other.id)
			}
		}
        if (object_index == obj_peasanto || object_index == obj_fencer || object_index == obj_ninja || object_index == obj_ancho)
        {
            if (state != 96)
            {
                hitboxcreate = 0
                instance_destroy(other.id)
            }
        }
    }
}


