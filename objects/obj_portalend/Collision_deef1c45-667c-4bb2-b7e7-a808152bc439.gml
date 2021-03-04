if (global.panic == 1)
{
    if (obj_player1.state != 19)
    {
        scr_soundeffect(61)
        obj_player1.hsp = 0
        sprite_index = spr_pizzaportalend
        image_index = 0
        obj_player1.state = 19
        obj_player1.visible = false
        obj_player1.grav = 0
        ID = obj_player1.id
        if (instance_exists(obj_player2) && global.coop == 1)
        {
            obj_player2.hsp = 0
            sprite_index = spr_pizzaportalend
            image_index = 0
            obj_player2.state = 19
            obj_player2.visible = false
            obj_player2.grav = 0
        }
    }
}


