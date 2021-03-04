if (place_meeting(x, (y - 1), obj_player) || place_meeting(x, (y + 1), obj_player) || global.tutorialtrap == 1)
    instance_destroy(obj_tutorialtrap)


