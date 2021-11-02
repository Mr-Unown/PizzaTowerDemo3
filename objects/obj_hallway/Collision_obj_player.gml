if (vertical == 0 && newvertical == 0)
{
    with (other.id)
    {
		global.pausecombotime = true
		obj_tv.alarm[1] = 75
        x = other.x
        if (image_yscale != 0.5)
            y = (other.y + (other.sprite_height - 46))
        if ((obj_player1.spotlight == 1 && object_index == obj_player1) || (obj_player1.spotlight == 0 && object_index == obj_player2))
        {
            if (!instance_exists(obj_fadeout))
            {
                obj_player1.targetDoor = other.targetDoor
                obj_player1.targetRoom = other.targetRoom
                obj_player1.hallway = 1
                obj_player1.hallwaydirection = other.image_xscale
                if instance_exists(obj_player2)
                {
                    obj_player2.targetDoor = other.targetDoor
                    obj_player2.targetRoom = other.targetRoom
                    obj_player2.hallway = 1
                    obj_player2.hallwaydirection = other.image_xscale
                }
                other.visited = 1
                if (state == 71)
                    state = 0
                scr_soundeffect(sfx_door)
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
            state = 0
        }
        else if (object_index == obj_player1 && state != 109)
        {
            alarm[5] = 2
            alarm[7] = 60
            hurted = 1
            x = obj_player2.x
            y = obj_player2.y
            state = 0
        }
    }
}
else if (vertical == 1 && newvertical == 0)
{
	global.pausecombotime = true
    obj_tv.alarm[1] = 75	
    global.hx = target_x
    global.hy = target_y
    with (other.id)
    {
        if ((obj_player1.spotlight == 1 && object_index == obj_player1) || (obj_player1.spotlight == 0 && object_index == obj_player2))
        {
            if (!instance_exists(obj_fadeout))
            {
                global.verticalh = 1
                obj_player1.targetRoom = other.targetRoom
                obj_player1.hallwaydirection = other.image_xscale
                if instance_exists(obj_player2)
                {
                    obj_player2.targetRoom = other.targetRoom
                    obj_player2.hallwaydirection = other.image_xscale
                }
                other.visited = 1
                image_index = 0
                if (state == 71)
                    state = 0
                scr_soundeffect(sfx_door)
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
            state = 0
        }
        else if (object_index == obj_player1 && state != 109)
        {
            alarm[5] = 2
            alarm[7] = 60
            hurted = 1
            x = obj_player2.x
            y = obj_player2.y
            state = 0
        }
    }
}
else if (newvertical == 1 && vertical == 0)
{
    with (other.id)
    {
		global.pausecombotime = true
		obj_tv.alarm[1] = 75		
		x = x
        y = y
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
                if instance_exists(obj_player2)
                {
                    obj_player2.targetDoor = other.targetDoor
                    obj_player2.targetRoom = other.targetRoom
                    obj_player2.vertical = 1
                    obj_player2.verticaloffset = xpos_offset
                }
                other.visited = 1
                if (state == 71)
                    state = 0
                scr_soundeffect(sfx_door)
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
}


