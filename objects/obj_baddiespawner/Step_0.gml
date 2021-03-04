if (golf == 0)
{
    if (!instance_exists(baddieid))
        refresh--
    if (refresh <= 0)
    {
        image_speed = 0.35
        if (floor(image_index) == 5)
        {
			if content != noone
            with (instance_create(x, (y - 35), content))
            {
                if (other.content != obj_pizzaball && other.content != obj_peasanto)
                    state = 106
                stunned = 50
                vsp = -5
                other.baddieid = id
                if (other.content != 91)
                    important = 1
                else
                    important = 0
            }
            refresh = 100
        }
    }
}
else if (golf == 1)
{
    image_speed = 0
    image_index = 0
}
if (content == obj_pizzaball)
{
    if (ds_list_find_index(global.saveroom, id) != -1)
        golf = 1
}

