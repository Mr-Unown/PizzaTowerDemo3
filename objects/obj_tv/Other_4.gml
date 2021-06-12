showtext = 0
oldmessage = ""
if global.snickchallenge == false
{
	switch(global.levelname)
	{
		case "entrance":
			global.stimerank = 2.30;
			global.srank = 14500
		break;
		case "medieval":
			global.stimerank = 2.15;
			global.srank = 13500	
		break;
		case "ruin":
			global.stimerank = 3.00;
			global.srank = 16500
		break;
		case "dungeon":
			global.stimerank = 4.00;
			global.srank = 17500	
		break;
		case "ancient":
			global.stimerank = 1.00;
			global.srank = 21500	
		break;
		case "chateau":
			global.stimerank = 1.00;
			global.srank = 14500	
		break;		
		case "strongcold":
			global.stimerank = 1.00;
			global.srank = 19000	
		break;
		default:
			global.stimerank = 0.00;
			global.srank = global.collect + 1005000					
		break;
	}
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))		
	//Time Attack
	global.atimerank = (global.stimerank + (global.stimerank / 1.25))
	global.btimerank = (global.stimerank + (global.stimerank / 1.25)*2)
	global.ctimerank = (global.stimerank + (global.stimerank / 1.25)*3)
	global.dtimerank = (global.stimerank + (global.stimerank / 1.25)*4)
	
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
	image_index = 0
	image_speed = 0
	tvsprite = spr_tvboot;
	newtvsprite = spr_tv_open;
	sprite_index = spr_tvboot
}