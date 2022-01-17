if (obj_player1.character == "V" && place_meeting(x, (y - 1), obj_player1))
    scr_hurtplayer(obj_player1)
else if (obj_player2.character == "V" && place_meeting(x, (y - 1), obj_player2))
    scr_hurtplayer(obj_player2)
else
{
    if (place_meeting(x, (y - 1), obj_player1) && obj_player1.state != 55 && obj_player1.character != "V")
    {
        obj_player1.firebutt += 1
        obj_player1.state = 6
        obj_player1.image_index = 0
        obj_player1.vsp = -25
        obj_player1.sprite_index = obj_player1.spr_fireass
		if obj_player1.character != "PZ"
        scr_soundeffect(sfx_scream5)
		else
		scr_soundeffect(sfx_screamPZ)
    }
    if (place_meeting(x, (y - 1), obj_player2) && obj_player2.state != 55 && obj_player2.character != "V")
    {
        obj_player2.firebutt += 1
        obj_player2.state = 6
        obj_player2.image_index = 0
        obj_player2.vsp = -25
        obj_player2.sprite_index = obj_player2.spr_fireass
        if obj_player2.character != "PZ"
        scr_soundeffect(sfx_scream5)
		else
		scr_soundeffect(sfx_screamPZ)
    }
}


