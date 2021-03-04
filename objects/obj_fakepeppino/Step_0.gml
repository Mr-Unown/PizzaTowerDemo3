if (global.fakepeppino == 1)
{
    if (global.panic == 1)
    {
        visible = true
        if (obj_player1.spotlight == 1)
            playerid = obj_player1
        else
            playerid = obj_player2
        switch state
        {
            case 94:
                scr_fakepeppino_idle()
                break
            case 102:
                scr_fakepeppino_walk()
                break
            case 105:
                scr_fakepeppino_hit()
                break
            case 58:
                scr_fakepeppino_jump()
                break
        }
        
        if place_meeting((x + hsp), y, obj_destructibles)
        {
            with (instance_place((x + hsp), y, obj_destructibles))
                instance_destroy()
        }
        if (global.panic == 1)
            appeartimer--
        if (appeartimer == 0)
        {
            scr_soundeffect(52)
            x = start_x
            y = start_y
            repeat (10)
            {
                with (instance_create((x + random_range(-100, 100)), (y + random_range(-100, 100)), obj_balloonpop))
                    sprite_index = spr_shotgunimpact
            }
            unstuck = 1
        }
        if (playerid.x > (x - 200) && playerid.x < (x + 200) && sprite_index == spr_fakepeppino_walk && y == playerid.y && (!instance_exists(obj_fadeout)))
        {
            state = 105
            sprite_index = spr_fakepeppino_grabdash
            image_index = 0
            movespeed = 8
        }
        if (global.panic == 1)
        {
            if (unstuck == 1)
            {
                objects[0] = 1
                objects[1] = 0
                objects[2] = 10
                if (distance_to_object(playerid) > 2000)
                {
                    sprite_index = spr_fakepeppino_jump
                    scr_soundeffect(52)
                    vsp = -15
                    movespeed = 8
                    state = 58
                    x = playerid.x
                    y = playerid.y
                    repeat (10)
                    {
                        with (instance_create((x + random_range(-100, 100)), (y + random_range(-100, 100)), obj_balloonpop))
                            sprite_index = spr_shotgunimpact
                    }
                }
            }
        }
    }
}
else
    visible = false


