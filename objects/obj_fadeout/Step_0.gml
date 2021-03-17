if instance_exists(obj_pausefadeout)
    instance_destroy(obj_pausefadeout)
if (fadealpha > 1)
{
	global.geromeopen = false;
	#region Toppins
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
	#endregion
    fadein = 1
    if instance_exists(obj_player)
    {
        with (obj_player)
        {
            if place_meeting(x, y, obj_goldendoor)
                game_restart()
        }
        if (acttransition == 1)
        {
            with (obj_music)
                fadeoff = 0
        }
        if (room != obj_player1.targetRoom)
            room_goto(obj_player1.targetRoom)
        if (global.coop == 1)
        {
            if (room != obj_player2.targetRoom)
                room_goto(obj_player2.targetRoom)
        }
    }
}
if (fadein == 0)
    fadealpha += 0.1
else if (fadein == 1)
    fadealpha -= 0.1
if instance_exists(obj_player)
{
    with (obj_player1)
    {
        if (other.fadein == 1 && (obj_player1.state == 78 || obj_player1.state == 64) && (place_meeting(x, y, obj_door) || place_meeting(x, y, obj_levelcomputer) || place_meeting(x, y, obj_startgate)))
        {
            state = 61
            image_index = 0
            if (global.coop == 1)
            {
                obj_player2.state = 61
                obj_player2.image_index = 0
            }
        }
        if (other.fadein == 1 && (obj_player1.state == 78 || obj_player1.state == 64) && place_meeting(x, y, obj_door2))
        {
            state = 0
            image_index = 0
            if (global.coop == 1)
            {
                obj_player2.state = 0
                obj_player2.image_index = 0
            }
        }		
        if (other.fadein == 1 && obj_player1.state == 78 && (obj_player1.sprite_index == spr_downpizzabox || obj_player1.sprite_index == spr_uppizzabox))
        {
            state = 67
            if (global.coop == 1)
                obj_player2.state = 67
        }
    }
    if instance_exists(obj_player2)
    {
        with (obj_player2)
        {
            if (other.fadein == 1 && (obj_player2.state == 78 || obj_player2.state == 64) && (place_meeting(x, y, obj_door) || place_meeting(x, y, obj_levelcomputer) || place_meeting(x, y, obj_startgate)))
            {
                state = 61
                image_index = 0
                if (global.coop == 1)
                {
                    obj_player1.state = 61
                    obj_player1.image_index = 0
                }
            }
			if (other.fadein == 1 && (obj_player2.state == 78 || obj_player2.state == 64) && place_meeting(x, y, obj_door2))
			{
	            state = 0
				image_index = 0
				if (global.coop == 1)
				{
	                obj_player1.state = 0
					obj_player1.image_index = 0
				}
			}				
            if (other.fadein == 1 && obj_player2.state == 78 && (obj_player2.sprite_index == spr_downpizzabox || obj_player2.sprite_index == spr_uppizzabox))
            {
                state = 67
                if (global.coop == 1)
                    obj_player1.state = 67
            }
        }
    }
}
if (fadein == 1 && fadealpha < 0)
    instance_destroy()


