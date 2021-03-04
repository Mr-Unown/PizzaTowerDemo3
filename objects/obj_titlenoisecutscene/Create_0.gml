hsp = 0
vsp = 0
image_speed = 0.35
ok = 0
depth = 2
if (obj_player.character != "N" && global.coop == 0)
    instance_destroy()
if (global.coop == 1)
    {
        if (obj_player1.character == "P")
            obj_player1.paletteselect = 1
        if (obj_player1.character == "N")
            obj_player1.paletteselect = 4
        if (obj_player2.character == "P")
            obj_player2.paletteselect = 1
        if (obj_player2.character == "N")
            obj_player2.paletteselect = 4
	}


