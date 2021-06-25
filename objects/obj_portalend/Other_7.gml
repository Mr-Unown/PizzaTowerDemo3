if (sprite_index == spr_pizzaportalend)
{
    if (!instance_exists(obj_fadeout))
    {
        obj_player1.targetDoor = other.targetDoor
        obj_player1.targetRoom = other.targetRoom
        obj_player1.portal = 1
        if instance_exists(obj_player2)
        {
            if (object_index == obj_player2)
            {
                obj_player1.x = obj_player2.x
                obj_player1.y = obj_player2.y
            }
            if (object_index == obj_player1)
            {
                obj_player2.x = obj_player1.x
                obj_player2.y = obj_player1.y
            }
            obj_player2.targetDoor = other.targetDoor
            obj_player2.targetRoom = other.targetRoom
            obj_player2.portal = 1
        }
        other.visited = 1
        scr_soundeffect(52)
        instance_create(x, y, obj_fadeout)
    }
    image_speed = 0
    visible = false
    ds_list_clear(global.baddieroom)
}


