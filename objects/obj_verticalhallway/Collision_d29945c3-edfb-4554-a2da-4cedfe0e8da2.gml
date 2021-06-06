if pos_x = undefined 
{
pos_x = other.x;
}
	with (other.id)
    {
		global.pausecombotime = true
		obj_tv.alarm[1] = 75	
		x = x
        y = approach(y, other.y + ((other.sprite_height/2) * sign(other.image_xscale)),16);

        if ((obj_player1.spotlight == 1 && object_index == obj_player1) || (obj_player1.spotlight == 0 && object_index == obj_player2))
        {
            if (!instance_exists(obj_fadeout))
            {
                var xpos_difference = point_distance(id.x, 0, other.id.x, 0)
                var xpos = (xpos_difference / other.image_xscale)
                var xpos_offset = (xpos * other.hallwayxscale)
                obj_player1.targetDoor = other.targetDoor
                obj_player1.targetRoom = other.targetRoom
                obj_player1.vertical = 1
                obj_player1.verticaloffset = xpos_offset
				obj_player1.hallwaydirection = other.image_yscale
                if instance_exists(obj_player2)
                {
                    obj_player2.targetDoor = other.targetDoor
                    obj_player2.targetRoom = other.targetRoom
                    obj_player2.vertical = 1
                    obj_player2.verticaloffset = xpos_offset
					obj_player2.hallwaydirection = other.image_yscale
                }
                other.visited = 1
                scr_soundeffect(52)
                if (other.acttransition == 1)
                {
                    with (instance_create(x, y, obj_fadeout))
                        acttransition = 1
                }
                else
                    instance_create(x, y, obj_fadeout)
            }
        }
        else if (object_index == obj_player2 && state != 109)
        {
            alarm[5] = 2
            alarm[7] = 60
            hurted = 1
            x = obj_player1.x
            y = obj_player1.y
        }
        else if (object_index == obj_player1 && state != 109)
        {
            alarm[5] = 2
            alarm[7] = 60
            hurted = 1
            x = obj_player2.x
            y = obj_player2.y
        }
    }


