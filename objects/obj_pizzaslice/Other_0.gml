var player = instance_nearest(x, y, obj_player)
out_timer = 95
outside_room = 1
recreate = 1
maxspeed += 1
x = median((x - maxspeed), player.x, (x + maxspeed))
y = median((y - maxspeed), player.y, (y + maxspeed))

