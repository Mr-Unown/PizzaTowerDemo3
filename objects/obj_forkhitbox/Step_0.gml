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
        if (object_index == obj_knight)
        {
            if (state != 86 && state != 94)
            {
                hitboxcreate = 0
                instance_destroy(other.id)
            }
        }
		
		if object_index = obj_swedishfish and state != 88 {
			
			hitboxcreate = 0
			instance_destroy(other.id)
		}
		
        if (obj_player.state == 83)
        {
            hitboxcreate = 0
            instance_destroy(other.id)
        }
       /** if (obj_player.state == 63 && (object_index == obj_peasanto || object_index == obj_ninja || object_index == obj_pizzice))
        {
            hitboxcreate = 0
            instance_destroy(other.id)
        }
        if (object_index == obj_noisecrusher)
        {
            if (state != 87)
            {
                hitboxcreate = 0
                instance_destroy(other.id)
            }
        }
        if (object_index == obj_peasanto || object_index == obj_ninja || object_index == obj_pizzice)
        {
            if (state != 88)
            {
                hitboxcreate = 0
                instance_destroy(other.id)
            }
        }*/
    }
}
