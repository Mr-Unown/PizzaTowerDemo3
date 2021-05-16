if global.hudmode != 1
{
draw_sprite_ext(sprite_index,-1,drawx,drawy,1,1,0,c_white,image_alpha)
}
targetx = 832;
targety = 74;
var angle = point_direction(drawx, drawy, targetx, targety);
drawx += lengthdir_x(32, angle);
drawy += lengthdir_y(32, angle);
//Tv
if point_in_circle(drawx,drawy,targetx,targety,32) 
{
	with obj_tv
	{
		shake = true;
		alarm[2] = 10;
	}
	drawx = targetx
	drawy = targety
	image_alpha -= 0.25
	instance_destroy()
}



