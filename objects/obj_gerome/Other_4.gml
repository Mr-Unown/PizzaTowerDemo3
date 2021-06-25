if global.timeattack = true
{
	sprite_index = spr_gerome_dying
	image_speed = 0.35
	image_index = 0
	
}
if global.geromefollowing = true {
x = obj_player1.x
y = obj_player1.y
targetx = obj_player1.x
targety = obj_player1.y
magnitude = 0
ds_queue_clear(followQueue)
ds_queue_enqueue(followQueue, obj_player1.x) 
ds_queue_enqueue(followQueue, obj_player1.y)
}
else if room = originalroom && global.geromefollowing != true
{
	sprite_index = choose(spr_gerome_mop,spr_gerome_eating,spr_gerome_sleeping)
	image_index = 0
	visible = true
	x = startx
	y = starty
}
else if global.geromefollowing != true
{
	visible = false
	x = -500
	y = -500
}

if sprite_index = spr_gerome_mop && global.geromefollowing = true
	sprite_index = spr_gerome_idle