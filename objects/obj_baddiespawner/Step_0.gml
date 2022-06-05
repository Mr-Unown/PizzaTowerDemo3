if (golf == 0) && obj_player1.state != states.forknight && obj_player1.state != states.indiancheese
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
				image_xscale = other.image_xscale
                if (other.content != obj_pizzaball && other.content != obj_peasanto)
                    state = 106
                stunned = 50
                vsp = -5
                other.baddieid = id
                if (other.content != 91)
                    important = other.important
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

