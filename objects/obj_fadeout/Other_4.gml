if (room == Titlescreen && obj_player.state == 8)
{
	with obj_player 
	{
		scr_characterspr()
	}
    if (obj_player1.character == "P")
    {
        obj_player1.sprite_index = spr_player_machfreefall
        obj_player1.state = 51
        obj_player1.movespeed = 20
        obj_player1.vsp = 5
        obj_player1.xscale = 1
        obj_player1.player_x = 50
        obj_player1.player_y = 50
        if (global.coop == 1)
        {
            instance_create(50, 100, obj_safeexplosion)
            obj_player2.sprite_index = spr_playerN_bodyslam
            obj_player2.state = 92
            obj_player2.movespeed = 6
            obj_player2.vsp = 5
            obj_player2.xscale = 1
            obj_player2.player_x = 50
            obj_player2.player_y = 100
        }
    }
    if (obj_player1.character == "N")
    {
        instance_create(50, 100, obj_safeexplosion)
        obj_player1.sprite_index = spr_playerN_bodyslam
        obj_player1.state = 92
        obj_player1.movespeed = 6
        obj_player1.vsp = 5
        obj_player1.xscale = 1
        obj_player1.player_x = 50
        obj_player1.player_y = 100
        if (global.coop == 1)
        {
            obj_player2.sprite_index = spr_player_machfreefall
            obj_player2.state = 51
            obj_player2.movespeed = 20
            obj_player2.vsp = 5
            obj_player2.xscale = 1
            obj_player2.player_x = 50
            obj_player2.player_y = 50
        }
    }
}


