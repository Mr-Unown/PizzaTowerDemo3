if global.shroomfollow = true {
x = obj_player1.x
y = obj_player1.y
targetx = obj_player1.x
targety = obj_player1.y
magnitude = 0
ds_queue_clear(followQueue)
ds_queue_enqueue(followQueue, obj_player1.x) 
ds_queue_enqueue(followQueue, obj_player1.y)
}

