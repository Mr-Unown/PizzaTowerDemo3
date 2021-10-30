//drawx = ((camerax() + cx) - (cameray() / factor))
//draw_triangle_colour((drawx - 3), (y + 160), (520 + cx), (y + 240), (720 + cx), (y + 240), bred, 255, 255, 0)

draw_set_color($d0d0f8);
draw_triangle(drawx, -128, (obj_player1.x - 128) - (obj_player1.y / 2), 540, (obj_player1.x + 128) - (obj_player1.y / 2), 540, false)
