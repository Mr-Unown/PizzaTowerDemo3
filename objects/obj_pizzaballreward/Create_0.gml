playerid = obj_player1
solids[0] = obj_solid
solids[1] = obj_slope
solids[2] = obj_destructibles
alarm[0] = 10
if (global.golfhit <= 5)
    golfscore = 22
else if (global.golfhit <= 10)
    golfscore = 20
else if (global.golfhit <= 20)
    golfscore = 15
else if (global.golfhit <= 30)
    golfscore = 10
else
    golfscore = 5
depth = 4
image_speed = 0.35
initialx = playerid.x
initialy = (playerid.y - 128)
spawnx = initialx
spawny = initialy


