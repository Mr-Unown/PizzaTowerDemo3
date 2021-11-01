var i = 0
for (i = (obj_player.x - 100); i <= (obj_player.x + 100); i++)
{
	draw_set_colour(make_colour_rgb(248, 208, 208))
	draw_line((room_width / 2), y, i, room_height)
}