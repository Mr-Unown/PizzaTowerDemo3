if (!place_meeting(x,y - random_range(0,2), obj_water) && !place_meeting(x,y - random_range(0,2), obj_boilingwater) && !place_meeting(x,y - random_range(0,2), obj_watercurrent) && !place_meeting(x,y - random_range(0,2), obj_waterdraft))
instance_destroy()

y += vsp
x = median(x, (x + random_range(-5,5)), (x + random_range(-5,5)))