
if animation_end()
{
    image_speed = 0
	//Temp Stuff
	#region Snick
    if (obj_player.character == "S")
    {
        if (sprite_index == spr_snick_victory)
        {
            with (obj_tv)
            {
                _message = "YOU GOT RANK S"
                showtext = 1
                alarm[0] = 50
            }
        }
        if (sprite_index == spr_snick_idleanim)
        {
            with (obj_tv)
            {
                _message = "YOU GOT RANK A"
                showtext = 1
                alarm[0] = 50
            }
        }
        if (sprite_index == spr_snick_hitwall)
        {
            with (obj_tv)
            {
                _message = "YOU GOT RANK B"
                showtext = 1
                alarm[0] = 50
            }
        }
        if (sprite_index == spr_snick_stunned)
        {
            with (obj_tv)
            {
                _message = "YOU GOT RANK C"
                showtext = 1
                alarm[0] = 50
            }
        }
        if (sprite_index == spr_snick_exe)
        {
            with (obj_tv)
            {
                _message = "YOU GOT RANK D"
                showtext = 1
                alarm[0] = 50
            }
        }
    }
	#endregion

}
#region VIGI
if (obj_player.character == "V")
{
    if (sprite_index == spr_playerV_gottreasure && floor(image_index) == (image_number - 1))
    {
        image_speed = 0
        with (obj_tv)
        {
            _message = "YOU GOT RANK S"
            showtext = 1
            alarm[0] = 50
        }
    }
    if (sprite_index == spr_playerV_idle4 && floor(image_index) == (image_number - 1))
    {
        image_speed = 0
        with (obj_tv)
        {
            _message = "YOU GOT RANK A"
            showtext = 1
            alarm[0] = 50
        }
    }
    if (sprite_index == spr_playerV_idle1 && floor(image_index) == 13)
    {
        image_speed = 0
        with (obj_tv)
        {
            _message = "YOU GOT RANK B"
            showtext = 1
            alarm[0] = 50
        }
    }
    if (sprite_index == spr_playerV_idle3 && floor(image_index) == 13)
    {
        image_speed = 0
        with (obj_tv)
        {
            _message = "YOU GOT RANK C"
            showtext = 1
            alarm[0] = 50
        }
    }
    if (sprite_index == spr_playerV_facehurt && floor(image_index) == (image_number - 1))
    {
        image_speed = 0
        with (obj_tv)
        {
            _message = "YOU GOT RANK D"
            showtext = 1
            alarm[0] = 50
        }
    }
}
#endregion
var player = obj_player
if global.coop == true
	player = (obj_player1.collectscore >= obj_player2.collectscore) ? obj_player1 : obj_player2
switch (player.character)
{
	case "P":
		if (global.rank == "p")
			sprite_index = spr_rankP	
        if (global.rank == "s+") || (global.rank == "s")
            sprite_index = spr_rankS
        if (global.rank == "a")
            sprite_index = spr_rankA
        if (global.rank == "b")
            sprite_index = spr_rankB
        if (global.rank == "c")
            sprite_index = spr_rankC
        if (global.rank == "d")
            sprite_index = spr_rankD	
	break;	
	case "N":
		if (global.rank == "p")
			sprite_index = spr_rankP	
        if (global.rank == "s+") || (global.rank == "s")
            sprite_index = spr_rankNS
        if (global.rank == "a")
            sprite_index = spr_rankNA
        if (global.rank == "b")
            sprite_index = spr_rankNB
        if (global.rank == "c")
            sprite_index = spr_rankNC
        if (global.rank == "d")
            sprite_index = spr_rankND	
	break;	
	case "S":
        if (global.rank == "p")
			sprite_index = spr_snick_rankS
        if (global.rank == "s") || (global.rank == "s+")
            sprite_index = spr_snick_rankS
        if (global.rank == "a")
            sprite_index = spr_snick_rankA
        if (global.rank == "b")
            sprite_index = spr_snick_rankB
        if (global.rank == "c")
            sprite_index = spr_snick_rankC
        if (global.rank == "d")
            sprite_index = spr_snick_rankD	
	break;	
	case "not in the game":
        if (global.rank == "p")
            sprite_index = spr_rankP	
        if (global.rank == "s") || (global.rank == "s+")
            sprite_index = spr_playernot in the game_rankS
        if (global.rank == "a")
            sprite_index = spr_playernot in the game_rankA
        if (global.rank == "b")
            sprite_index = spr_playernot in the game_rankB
        if (global.rank == "c")
            sprite_index = spr_playernot in the game_rankC
        if (global.rank == "d")
            sprite_index = spr_playernot in the game_rankD	
	break;	
	case "V":
        if (global.rank == "p")
            sprite_index = spr_playerV_gottreasure
        if (global.rank == "s") || (global.rank == "s+")
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
	break;
	case "PM":
	case "D":
		if (global.rank == "p")
			sprite_index = spr_rankP	
        if (global.rank == "s+") || (global.rank == "s")
            sprite_index = spr_rankS
        if (global.rank == "a")
            sprite_index = spr_rankA
        if (global.rank == "b")
            sprite_index = spr_rankB
        if (global.rank == "c")
            sprite_index = spr_rankC
        if (global.rank == "d")
            sprite_index = spr_rankD		
	break;
}

/*
    if (player.character == "P")
    {
        if (global.rank == "p")
            sprite_index = spr_rankP	
        if (global.rank == "s") || (global.rank == "s+")
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
    else if (player.character == "N")
    {
        if (global.rank == "p")
            sprite_index = spr_rankP	
        if (global.rank == "s") || (global.rank == "s+")
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
    else if (player.character == "not in the game")
    {
        if (global.rank == "p")
            sprite_index = spr_rankP	
        if (global.rank == "s") || (global.rank == "s+")
            sprite_index = spr_playernot in the game_rankS
        if (global.rank == "a")
            sprite_index = spr_playernot in the game_rankA
        if (global.rank == "b")
            sprite_index = spr_playernot in the game_rankB
        if (global.rank == "c")
            sprite_index = spr_playernot in the game_rankC
        if (global.rank == "d")
            sprite_index = spr_playernot in the game_rankD
    }	
    else if (player.character == "S")
    {
        if (global.rank == "p")
            sprite_index = spr_rankP	
        if (global.rank == "s") || (global.rank == "s+")
            sprite_index = spr_snick_rankS
        if (global.rank == "a")
            sprite_index = spr_snick_rankA
        if (global.rank == "b")
            sprite_index = spr_snick_rankB
        if (global.rank == "c")
            sprite_index = spr_snick_rankC
        if (global.rank == "d")
            sprite_index = spr_snick_rankD
    }
    else if (player.character == "V")
    {
        if (global.rank == "p")
            sprite_index = spr_rankP	
        if (global.rank == "s") || (global.rank == "s+")
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



