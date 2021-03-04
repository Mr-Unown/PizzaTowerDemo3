if (obj_player.state == 91)
{
    with (instance_place(x, (y - 1), obj_player))
    {
        repeat (5)
        {
            with (instance_create(((x - (xscale * 30)) + random_range(-5, 5)), ((y + 40) + random_range(-5, 5)), obj_slimedebris))
            {
                sprite_index = spr_waterdrop
                image_alpha = 0.392
            }
        }
    }
}

