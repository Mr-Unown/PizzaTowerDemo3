if (room == rank_room || room == timesuproom)
    visible = false
else
    visible = playerid.visible
if (obj_player.state == 53)
    visible = false
if (sprite_index == spr_toppintomato_intro && floor(image_index) == (image_number - 1))
    sprite_index = spr_pizzakintomato
if (obj_player1.spotlight == 1)
    playerid = obj_player1
else
    playerid = obj_player2
if (global.tomatofollow == 1 && sprite_index != spr_toppintomato_intro)
{
    image_alpha = playerid.image_alpha
	if (global.panic == 1)
        sprite_index = spr_pizzakintomato_panic
    else if (playerid.hsp != 0)
        sprite_index = spr_pizzakintomato_run
    else
        sprite_index = spr_pizzakintomato
    depth = -6
	if ds_list_find_index(global.follower, id) = 0 {
		ds_queue_enqueue(followQueue, playerid.x)
		ds_queue_enqueue(followQueue, playerid.y)		
	} 
	else 
	{
		var leader = ds_list_find_value(global.follower, floor(ds_list_find_index(global.follower, id) - 1));		
		ds_queue_enqueue(followQueue, leader.x)
		ds_queue_enqueue(followQueue, leader.y)			
	}
    LAG_STEPS = 10
	if (ds_queue_size(followQueue) > (LAG_STEPS * 2))
	{	
		targetx = (ds_queue_dequeue(followQueue) - (distance))
		targety = (ds_queue_dequeue(followQueue))
	}
	x = targetx
	y = targety
if playerid.hsp = 0 && playerid.state != states.door && playerid.grounded && image_xscale = playerid.xscale {
	if magnitude < 32 && ((scr_solid(x - distance, bbox_bottom + 1) || (!place_meeting(x, y, obj_platform) && place_meeting(x, bbox_bottom + 1, obj_platform)))) && !scr_solid(x - image_xscale, y) 
	 magnitude += 0.5
}
else if magnitude > 0
	magnitude -= 0.5
	
distance = image_xscale * magnitude
if image_xscale != playerid.xscale {
	if magnitude <= 0 {
		image_xscale = playerid.xscale
	}
	else
		magnitude -= 0.5
	}
if playerid.x != x
	drawxscale = (-sign((x - playerid.x)))	
}
