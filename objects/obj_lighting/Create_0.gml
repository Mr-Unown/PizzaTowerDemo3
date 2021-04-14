surf = surface_create(room_width + 128, room_height + 128)
surface_set_target(surf)
draw_clear_alpha(c_black, 0)
surface_reset_target()
depth = -8
darkness = 0
targetdarkness = 0

