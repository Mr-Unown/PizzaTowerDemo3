if instance_exists(obj_water) && y > obj_water.bbox_top // || place_meeting(x,y, obj_watercurrent) || place_meeting(x,y, obj_waterdraft)
{
	if drawy < 10
	drawy += 0.5
	draw_sprite_ext(sprite_index,-1,x,y - drawy,drawxscale,image_yscale,image_angle,image_blend,image_alpha)
	//draw_sprite_ext(spr_toppin_underwater,-1,x,y - drawy,1,image_yscale,image_angle,image_blend,image_alpha)
}
else
{
	if drawy > 0
	drawy -= 0.5
	else
	drawy = 0
	draw_sprite_ext(sprite_index,-1,x,y - drawy,drawxscale,image_yscale,image_angle,image_blend,image_alpha)
}