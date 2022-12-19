with (obj_player)
{
    if (state != 56)
    {
        /*if (state == 17 || state == 18 || state == 11)
        {
            with (instance_create(x, y, obj_knightdebris))
                image_index = 0
            with (instance_create(x, y, obj_knightdebris))
                image_index = 1
            with (instance_create(x, y, obj_knightdebris))
                image_index = 2
            with (instance_create(x, y, obj_knightdebris))
                image_index = 3
            with (instance_create(x, y, obj_knightdebris))
                image_index = 4
            with (instance_create(x, y, obj_knightdebris))
                image_index = 5
        }*/
        //if (state == 20)
            //instance_create(x, y, obj_bombexplosion)
        scr_sound(26)
        sprite_index = spr_player_superjump
        state = 56
        vsp = -10
        other.image_index = 0
        other.image_speed = 0.35
		
    }
}
obj_player.x = x