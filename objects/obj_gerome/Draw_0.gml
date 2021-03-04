if instance_place(x,y, obj_water) || instance_place(x,y, obj_watercurrent) || instance_place(x,y, obj_waterdraft)
{
	if drawy < 10
	drawy += 0.5
	draw_sprite_ext(sprite_index,-1,x,y - drawy,drawxscale,image_yscale,image_angle,image_blend,image_alpha)
}
else
{
	if drawy > 0
	drawy -= 0.5
	else
	drawy = 0
	draw_sprite_ext(sprite_index,-1,x,y - drawy,drawxscale,image_yscale,image_angle,image_blend,image_alpha)
}