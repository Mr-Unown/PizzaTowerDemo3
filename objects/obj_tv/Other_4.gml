if global.snickchallenge == false
{
	switch(global.levelname)
	{
		case "entrance":
			global.srank = 14500
		break;
		case "medieval":
			global.srank = 13500	
		break;
		case "ruin":
			global.srank = 16500
		break;
		case "dungeon":
			global.srank = 17500	
		break;
		case "ancient":
			global.srank = 21500	
		break;
		case "chateau":
			global.srank = 14500	
		break;		
		case "strongcold":
			global.srank = 19000	
		break;
		default:
			global.srank = global.collect + 1005000					
		break;
	}
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))		
}
else
{
    global.srank = 8300
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))	
}

if bootingup = false
{
	alarm[0] = -1
	imageindexstore = 0
	_image_index = 0
	image_speed = 0
	tvsprite = spr_tvboot
	sprite_index = spr_tvboot
	bootingup = true
}