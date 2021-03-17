if global.tomatofollow = true {
x = obj_player1.x
y = obj_player1.y
ds_queue_clear(followQueue)
ds_queue_enqueue(followQueue, obj_player1.x) 
ds_queue_enqueue(followQueue, obj_player1.y)
}
