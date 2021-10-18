if global.timeattack = true
{
	sprite_index = spr_gerome_dying
	image_speed = 0.35
	if floor(image_index) >= image_number - 1
		instance_destroy();
}
else
{
if (room == rank_room || room == timesuproom)
    visible = false
else
    visible = playerid.visible
if (obj_player.state == 53)
    visible = false
if (obj_player1.spotlight == 1)
    playerid = obj_player1
else
    playerid = obj_player2

//Out of Treasure
if alreadytouched = true
	if global.geromefollowing = false && room = originalroom && global.geromeopen = false && global.panic = true
	{
	//Follower DS_list
		ds_list_add(global.follower, id);
		global.geromefollowing = true
		sprite_index = spr_gerome_idle
		targetx = obj_player1.x
		targety = obj_player1.y
		magnitude = 0
	}
if sprite_index = spr_gerome_mop && global.geromefollowing = true && floor(image_index) = image_number -1
	sprite_index = spr_gerome_idle
if sprite_index = spr_gerome_door && floor(image_index) = image_number - 1
	image_index = 19
	
if (ds_list_find_index(global.follower, id) != -1)	{
if global.geromefollowing = true {
	depth = -6	
    image_alpha = playerid.image_alpha
    if (playerid.hsp != 0) && sprite_index != spr_gerome_mop
        sprite_index = spr_gerome_walk
    else if sprite_index != spr_gerome_mop
        sprite_index = spr_gerome_idle
if ds_list_find_index(global.follower, id) = 0 {
    ds_queue_enqueue(followQueue, playerid.x)
    ds_queue_enqueue(followQueue, playerid.y)		
} else 
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
if sprite_index != spr_gerome_mop {
x = targetx
y = targety
}
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
}
}