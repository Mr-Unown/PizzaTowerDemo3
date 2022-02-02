x = player.x
y = player.y
if (global.stylethreshold < 2)
    visible = false
else
    visible = player.visible
if (room == rank_room)
    visible = false
if (global.stylethreshold == 2)
    alpha = 0.25
if (global.stylethreshold >= 3)
    alpha = 0.5
Vspeed = random_range(-1, 1)
Hspeed = random_range(-1, 1)
alarm[0] = 10
