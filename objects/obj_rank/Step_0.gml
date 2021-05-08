if (floor(image_index) == (image_number - 1))
{
    image_speed = 0
    if (obj_player.character == "S")
    {
        if (sprite_index == spr_snick_victory)
        {
            with (obj_tv)
            {
                message = "YOU GOT RANK S"
                showtext = 1
                alarm[0] = 50
            }
        }
        if (sprite_index == spr_snick_idleanim)
        {
            with (obj_tv)
            {
                message = "YOU GOT RANK A"
                showtext = 1
                alarm[0] = 50
            }
        }
        if (sprite_index == spr_snick_hitwall)
        {
            with (obj_tv)
            {
                message = "YOU GOT RANK B"
                showtext = 1
                alarm[0] = 50
            }
        }
        if (sprite_index == spr_snick_stunned)
        {
            with (obj_tv)
            {
                message = "YOU GOT RANK C"
                showtext = 1
                alarm[0] = 50
            }
        }
        if (sprite_index == spr_snick_exe)
        {
            with (obj_tv)
            {
                message = "YOU GOT RANK D"
                showtext = 1
                alarm[0] = 50
            }
        }
    }
}
if (obj_player.character == "V")
{
    if (sprite_index == spr_playerV_gottreasure && floor(image_index) == (image_number - 1))
    {
        image_speed = 0
        with (obj_tv)
        {
            message = "YOU GOT RANK S"
            showtext = 1
            alarm[0] = 50
        }
    }
    if (sprite_index == spr_playerV_idle4 && floor(image_index) == (image_number - 1))
    {
        image_speed = 0
        with (obj_tv)
        {
            message = "YOU GOT RANK A"
            showtext = 1
            alarm[0] = 50
        }
    }
    if (sprite_index == spr_playerV_idle1 && floor(image_index) == 13)
    {
        image_speed = 0
        with (obj_tv)
        {
            message = "YOU GOT RANK B"
            showtext = 1
            alarm[0] = 50
        }
    }
    if (sprite_index == spr_playerV_idle3 && floor(image_index) == 13)
    {
        image_speed = 0
        with (obj_tv)
        {
            message = "YOU GOT RANK C"
            showtext = 1
            alarm[0] = 50
        }
    }
    if (sprite_index == spr_playerV_facehurt && floor(image_index) == (image_number - 1))
    {
        image_speed = 0
        with (obj_tv)
        {
            message = "YOU GOT RANK D"
            showtext = 1
            alarm[0] = 50
        }
    }
}
if (obj_player1.collectscore >= obj_player2.collectscore)
{
    if (obj_player1.character == "P")
    {
        if (global.rank == "s")
            sprite_index = spr_rankS
        if (global.rank == "a")
            sprite_index = spr_rankA
        if (global.rank == "b")
            sprite_index = spr_rankB
        if (global.rank == "c")
            sprite_index = spr_rankC
        if (global.rank == "d")
            sprite_index = spr_rankD
    }
    else if (obj_player1.character == "N")
    {
        if (global.rank == "s")
            sprite_index = spr_rankNS
        if (global.rank == "a")
            sprite_index = spr_rankNA
        if (global.rank == "b")
            sprite_index = spr_rankNB
        if (global.rank == "c")
            sprite_index = spr_rankNC
        if (global.rank == "d")
            sprite_index = spr_rankND
    }
    else if (obj_player1.character == "PZ")
    {
        if (global.rank == "s")
            sprite_index = spr_playerPZ_rankS
        if (global.rank == "a")
            sprite_index = spr_playerPZ_rankA
        if (global.rank == "b")
            sprite_index = spr_playerPZ_rankB
        if (global.rank == "c")
            sprite_index = spr_playerPZ_rankC
        if (global.rank == "d")
            sprite_index = spr_playerPZ_rankD
    }	
    else if (obj_player1.character == "S")
    {
        if (global.rank == "s")
            sprite_index = spr_snick_victory
        if (global.rank == "a")
            sprite_index = spr_snick_idleanim
        if (global.rank == "b")
            sprite_index = spr_snick_hitwall
        if (global.rank == "c")
            sprite_index = spr_snick_stunned
        if (global.rank == "d")
            sprite_index = spr_snick_exe
    }
    else if (obj_player1.character == "V")
    {
        if (global.rank == "s")
            sprite_index = spr_playerV_gottreasure
        if (global.rank == "a")
            sprite_index = spr_playerV_idle4
        if (global.rank == "b")
        {
            sprite_index = spr_playerV_idle1
            image_index = 13
        }
        if (global.rank == "c")
        {
            sprite_index = spr_playerV_idle3
            image_index = 13
        }
        if (global.rank == "d")
            sprite_index = spr_playerV_facehurt
    }
}
if (obj_player2.collectscore > obj_player1.collectscore)
{
    if (obj_player2.character == "P")
    {
        if (global.rank == "s")
            sprite_index = spr_rankS
        if (global.rank == "a")
            sprite_index = spr_rankA
        if (global.rank == "b")
            sprite_index = spr_rankB
        if (global.rank == "c")
            sprite_index = spr_rankC
        if (global.rank == "d")
            sprite_index = spr_rankD
    }
    else if (obj_player2.character == "N")
    {
        if (global.rank == "s")
            sprite_index = spr_rankNS
        if (global.rank == "a")
            sprite_index = spr_rankNA
        if (global.rank == "b")
            sprite_index = spr_rankNB
        if (global.rank == "c")
            sprite_index = spr_rankNC
        if (global.rank == "d")
            sprite_index = spr_rankND
    }
    else if (obj_player2.character == "PZ")
    {
        if (global.rank == "s")
            sprite_index = spr_playerPZ_rankS
        if (global.rank == "a")
            sprite_index = spr_playerPZ_rankA
        if (global.rank == "b")
            sprite_index = spr_playerPZ_rankB
        if (global.rank == "c")
            sprite_index = spr_playerPZ_rankC
        if (global.rank == "d")
            sprite_index = spr_playerPZ_rankD
    }		
    else if (obj_player2.character == "S")
    {
        if (global.rank == "s")
            sprite_index = spr_snick_victory
        if (global.rank == "a")
            sprite_index = spr_snick_idleanim
        if (global.rank == "b")
            sprite_index = spr_snick_stunned
        if (global.rank == "c")
            sprite_index = spr_snick_hitwall
        if (global.rank == "d")
            sprite_index = spr_snick_exe
    }
    else if (obj_player2.character == "V")
    {
        if (global.rank == "s")
            sprite_index = spr_playerV_gottreasure
        if (global.rank == "a")
            sprite_index = spr_playerV_idle4
        if (global.rank == "b")
        {
            sprite_index = spr_playerV_idle1
            image_index = 13
        }
        if (global.rank == "c")
        {
            sprite_index = spr_playerV_idle3
            image_index = 13
        }
        if (global.rank == "d")
            sprite_index = spr_playerV_facehurt
    }
}


