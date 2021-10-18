if global.hudmode == false
{
draw_sprite_ext(sprite_index,-1,drawx,drawy,drawxscale,drawyscale,0,c_white,image_alpha)
}
if global.newhud = false
{
	targetx = 832;
	targety = 74;
}
else
{
	targetx = 150;
	targety = 100 + obj_camera.newhudyoffset;
}
var angle = point_direction(drawx, drawy, targetx, targety);
drawx += lengthdir_x(16, angle);
drawy += lengthdir_y(16, angle);

//Tv
if point_in_circle(drawx,drawy,targetx,targety,32) 
{
	if global.newhud = false
	{
		with obj_tv
		{
			shake = true;
			alarm[2] = 20;
		}
	}
	else
	{
		with obj_camera
		{
			shakemag = clamp(shakemag + 1,2,5)
		}
	}
	drawx = targetx
	drawy = targety
	image_alpha -= 0.25
	instance_destroy()
}



