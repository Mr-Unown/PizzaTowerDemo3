//Surface
if !surface_exists(surf_pallete)
	surf_pallete = surface_create(surf_width,surf_height)
//Colors
scr_playercolors()
	
	
//Things
if (object_index == obj_player1)
{
    if (global.coop == 1)
        scr_changetoppings()
    if (state == 46)
        state = 0
    if (object_index == obj_player2 && obj_player1.spotlight == 1 && global.coop == 1)
    {
        alarm[5] = 2
        alarm[7] = 60
        hurted = 1
    }
    if (object_index == obj_player1 && obj_player1.spotlight == 0)
    {
        alarm[5] = 2
        alarm[7] = 60
        hurted = 1
    }
    if (object_index != obj_player2 || global.coop == 1)
    {
        if (global.verticalh == 0)
        {
            if (targetDoor == "A")
            {
                if (hallway == 1)
                    x = (obj_doorA.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorA.x + 32)
                else if (portal == 1)
                    x = (obj_doorA.x + 16)
                else if (vertical == 1)
                    x = (obj_doorA.x + verticaloffset)
                else
                    x = (obj_doorA.x + 16)	
                y = (obj_doorA.y - 14)
            }
            if (targetDoor == "B")
            {
                if (hallway == 1)
                    x = (obj_doorB.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorB.x + 32)
                else if (portal == 1)
                    x = (obj_doorB.x + 16)
                else if (vertical == 1)
                    x = (obj_doorB.x + verticaloffset)
                else
                    x = (obj_doorB.x + 16)
                y = (obj_doorB.y - 14)
            }
            if (targetDoor == "C")
            {
                if (hallway == 1)
                    x = (obj_doorC.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorC.x + 32)
                else if (portal == 1)
                    x = (obj_doorC.x + 16)
                else if (vertical == 1)
                    x = (obj_doorC.x + verticaloffset)
                else
                    x = (obj_doorC.x + 16)
                y = (obj_doorC.y - 14)
            }
            if (targetDoor == "D")
            {
                if (hallway == 1)
                    x = (obj_doorD.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorD.x + 32)
                else if (portal == 1)
                    x = (obj_doorD.x + 16)
                else if (vertical == 1)
                    x = (obj_doorD.x + verticaloffset)
                else
                    x = (obj_doorD.x + 16)
                y = (obj_doorD.y - 14)
            }
            if (targetDoor == "E")
            {
                if (hallway == 1)
                    x = (obj_doorE.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorE.x + 32)
                else if (portal == 1)
                    x = (obj_doorE.x + 16)
                else if (vertical == 1)
                    x = (obj_doorE.x + verticaloffset)
                else
                    x = (obj_doorE.x + 16)
                y = (obj_doorE.y - 14)
            }
            if (targetDoor == "F")
            {
                if (hallway == 1)
                    x = (obj_doorF.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorF.x + 32)
                else if (portal == 1)
                    x = (obj_doorF.x + 16)
                else if (vertical == 1)
                    x = (obj_doorF.x + verticaloffset)
                else
                    x = (obj_doorF.x + 16)
                y = (obj_doorF.y - 14)
            }
			if (targetDoor = "start")
            {
				if (global.coop == 0)
				{
					x = backtohubstartx
					y = backtohubstarty
				}
				else
				{
					x = backtohubstartx - 32
					y = backtohubstarty
				}
            }	
        }
        if (global.verticalh == 1)
        {
            x = global.hx
            y = global.hy
            global.verticalh = 0
        }
        if (portal == 1)
        {
            movespeed = 0
            visible = true
            sprite_index = spr_pizzaportalentrancestart
            image_index = 0
            ds_list_clear(global.baddieroom)
            portal = 0
            if (global.lapping == 0)
            {
                with (instance_create(x, y, obj_smallnumber))
                    number = "2000"
                obj_player1.collectscore = ( obj_player1.collectscore + 2000)
                scr_soundeffect(6)
                with (obj_tv)
                {
                    showtext = 1
                    message = "LAP 1!"
                    alarm[0] = 100
                }
            }
            if (global.lapping == 1)
            {
                with (instance_create(x, y, obj_smallnumber))
                    number = "5000"
                 obj_player1.collectscore = ( obj_player1.collectscore + 5000)
                scr_soundeffect(6)
                with (obj_tv)
                {
                    showtext = 1
                    message = "LAP 2!"
                    alarm[0] = 100
                }
            }
            if (global.lapping == 2)
            {
                with (instance_create(x, y, obj_smallnumber))
                    number = "6500"
                 obj_player1.collectscore = ( obj_player1.collectscore + 6500)
                scr_soundeffect(6)
                with (obj_tv)
                {
                    showtext = 1
                    message = "LAP 3!"
                    alarm[0] = 100
                }
            }
            if (global.lapping == 3)
            {
                with (instance_create(x, y, obj_smallnumber))
                    number = "8500"
                 obj_player1.collectscore = ( obj_player1.collectscore + 8500)
                scr_soundeffect(6)
                scr_soundeffect(127)
                instance_create(x, y, obj_pizzaface)
                with (obj_tv)
                {
                    showtext = 1
                    message = "DEATH MODE!"
                    alarm[0] = 100
                }
            }
            global.lapping = (global.lapping + 1)
        }
    }
    vertical = 0
    hallway = 0
    box = 0
    roomstartx = x
    roomstarty = y
}
if (object_index == obj_player2)
{
    if (global.coop == 1)
        scr_changetoppings()
    if (state == 46)
        state = 0
    if (object_index == obj_player2 && obj_player1.spotlight == 1 && global.coop == 1)
    {
        alarm[5] = 2
        alarm[7] = 60
        hurted = 1
    }
    if (object_index == obj_player1 && obj_player1.spotlight == 0)
    {
        alarm[5] = 2
        alarm[7] = 60
        hurted = 1
    }
    if (object_index != obj_player2 || global.coop == 1)
    {
        if (global.verticalh == 0)
        {
            if (targetDoor == "A")
            {
                if (hallway == 1)
                    x = (obj_doorA.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorA.x + 32)
                else if (portal == 1)
                    x = (obj_doorA.x + 16)
                else if (vertical == 1)
                    x = (obj_doorA.x + verticaloffset)
                else
                    x = (obj_doorA.x + 16)
                y = (obj_doorA.y - 14)
            }
            if (targetDoor == "B")
            {
                if (hallway == 1)
                    x = (obj_doorB.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorB.x + 32)
                else if (portal == 1)
                    x = (obj_doorB.x + 16)
                else if (vertical == 1)
                    x = (obj_doorB.x + verticaloffset)
                else
                    x = (obj_doorB.x + 16)
                y = (obj_doorB.y - 14)
            }
            if (targetDoor == "C")
            {
                if (hallway == 1)
                    x = (obj_doorC.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorC.x + 32)
                else if (portal == 1)
                    x = (obj_doorC.x + 16)
                else if (vertical == 1)
                    x = (obj_doorC.x + verticaloffset)
                else
                    x = (obj_doorC.x + 16)
                y = (obj_doorC.y - 14)
            }
            if (targetDoor == "D")
            {
                if (hallway == 1)
                    x = (obj_doorD.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorD.x + 32)
                else if (portal == 1)
                    x = (obj_doorD.x + 16)
                else if (vertical == 1)
                    x = (obj_doorD.x + verticaloffset)
                else
                    x = (obj_doorD.x + 16)
                y = (obj_doorD.y - 14)
            }
            if (targetDoor == "E")
            {
                if (hallway == 1)
                    x = (obj_doorE.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorE.x + 32)
                else if (portal == 1)
                    x = (obj_doorE.x + 16)
                else if (vertical == 1)
                    x = (obj_doorE.x + verticaloffset)
                else
                    x = (obj_doorE.x + 16)
                y = (obj_doorE.y - 14)
            }
            if (targetDoor == "F")
            {
                if (hallway == 1)
                    x = (obj_doorF.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorF.x + 32)
                else if (portal == 1)
                    x = (obj_doorF.x + 16)
                else if (vertical == 1)
                    x = (obj_doorF.x + verticaloffset)
                else
                    x = (obj_doorF.x + 16)
                y = (obj_doorF.y - 14)
            }
			if (targetDoor = "start")
            {
				if (global.coop == 0)
				{
					x = backtohubstartx
					y = backtohubstarty
				}
				else
				{
					x = backtohubstartx + 32
					y = backtohubstarty
				}
            }
        }
        if (global.verticalh == 1)
        {
            x = global.hx
            y = global.hy
            global.verticalh = 0
        }
        if (portal == 1)
        {
            movespeed = 0
            visible = true
            sprite_index = spr_pizzaportalentrancestart
            image_index = 0
            ds_list_clear(global.baddieroom)
            portal = 0
            if (global.lapping == 0)
            {
                with (instance_create(x, y, obj_smallnumber))
                    number = "2000"
                 obj_player2.collectscore = (obj_player2.collectscore + 2000)
                scr_soundeffect(6)
                with (obj_tv)
                {
                    showtext = 1
                    message = "LAP 1!"
                    alarm[0] = 100
                }
            }
            if (global.lapping == 1)
            {
                with (instance_create(x, y, obj_smallnumber))
                    number = "5000"
                obj_player2.collectscore = (obj_player2.collectscore + 5000)
                scr_soundeffect(6)
                with (obj_tv)
                {
                    showtext = 1
                    message = "LAP 2!"
                    alarm[0] = 100
                }
            }
            if (global.lapping == 2)
            {
                with (instance_create(x, y, obj_smallnumber))
                    number = "6500"
                obj_player2.collectscore = (obj_player2.collectscore + 6500)
                scr_soundeffect(6)
                with (obj_tv)
                {
                    showtext = 1
                    message = "LAP 3!"
                    alarm[0] = 100
                }
            }
            if (global.lapping == 3)
            {
                with (instance_create(x, y, obj_smallnumber))
                    number = "8500"
                obj_player2.collectscore = (obj_player2.collectscore + 8500)
                scr_soundeffect(6)
                scr_soundeffect(127)
                instance_create(x, y, obj_pizzaface)
                with (obj_tv)
                {
                    showtext = 1
                    message = "DEATH MODE!"
                    alarm[0] = 100
                }
            }
            global.lapping = (global.lapping + 1)
        }
    }
    vertical = 0
    hallway = 0
    box = 0
    roomstartx = x
    roomstarty = y
}
    if (global.shroomfollow == 1) && instance_exists(obj_pizzakinshroom) {
		with obj_pizzakinshroom {
        x = obj_player1.x
		y = obj_player1.y
		ds_queue_clear(followQueue)
		ds_queue_enqueue(followQueue, obj_player1.x) 
		ds_queue_enqueue(followQueue, obj_player1.y)
		}
	}
    if (global.cheesefollow == 1) && instance_exists(obj_pizzakincheese) {
		with obj_pizzakincheese {
        x = obj_player1.x
		y = obj_player1.y
		ds_queue_clear(followQueue)
		ds_queue_enqueue(followQueue, obj_player1.x) 
		ds_queue_enqueue(followQueue, obj_player1.y)
		}
	}
    if (global.tomatofollow == 1) && instance_exists(obj_pizzakintomato) {
		with obj_pizzakintomato {
        x = obj_player1.x
		y = obj_player1.y
		ds_queue_clear(followQueue)
		ds_queue_enqueue(followQueue, obj_player1.x) 
		ds_queue_enqueue(followQueue, obj_player1.y)
		}
	}
    if (global.sausagefollow == 1) && instance_exists(obj_pizzakinsausage){
		with obj_pizzakinsausage {
        x = obj_player1.x
		y = obj_player1.y
		ds_queue_clear(followQueue)
		ds_queue_enqueue(followQueue, obj_player1.x) 
		ds_queue_enqueue(followQueue, obj_player1.y)
		}
	}
    if (global.pineapplefollow == 1) && instance_exists(obj_pizzakinpineapple){
		with obj_pizzakinpineapple {
        x = obj_player1.x
		y = obj_player1.y
		ds_queue_clear(followQueue)
		ds_queue_enqueue(followQueue, obj_player1.x) 
		ds_queue_enqueue(followQueue, obj_player1.y)
		}
	}
	if global.geromefollowing = true  && instance_exists(obj_gerome){
		with obj_gerome {
        x = obj_player1.x
		y = obj_player1.y
		ds_queue_clear(followQueue)
		ds_queue_enqueue(followQueue, obj_player1.x) 
		ds_queue_enqueue(followQueue, obj_player1.y)
		}
	}
