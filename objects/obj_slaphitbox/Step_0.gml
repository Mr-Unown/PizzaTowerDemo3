image_xscale = obj_player.xscale
x = obj_player.x
y = obj_player.y
if ((obj_player.image_index > 3 || obj_player.state != 5) && obj_player.state != 15 && obj_player.state != 2)
    instance_destroy()
