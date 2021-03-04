image_speed = -1
depth = 5
if (place_meeting(x, (y + 1), obj_railv) && (!place_meeting(x, (y - 1), obj_railv)))
    sprite_index = spr_railvup
if (place_meeting(x, (y - 1), obj_railv) && (!place_meeting(x, (y + 1), obj_railv)))
    sprite_index = spr_railvdown
if (place_meeting(x, (y + 1), obj_railv) && place_meeting(x, (y - 1), obj_railv))
    sprite_index = spr_railv


