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
			global.stimerank = 2.30;
			global.srank = 14000	
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
			global.stimerank = 3.40;
			global.srank = 21500	
		break;
		case "chateau":
			global.stimerank = 3.30;
			global.srank = 15000	
		break;		
		case "strongcold":
			global.stimerank = 6.30;
			global.srank = 18900	
		break;
		default:
			global.stimerank = 10.00;
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
	//Snick Challenge
    global.srank = 8000
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
//Spriteprefetch Thingys
switch(global.levelname)
{
	case "entrance":
		global.prefetcharray[0] = bg_entrance1
		global.prefetcharray[1] = spr_entrancebgpillar
		global.prefetcharray[2] = bg_entranceforeground
	break;
	case "medieval":
		global.prefetcharray[0] = bg_medieval1
		global.prefetcharray[1] = spr_medievaldoor
		global.prefetcharray[2] = bg_medievaltowers
	break;
	case "ruin":
		global.prefetcharray[0] = bg_ruin
		global.prefetcharray[1] = bg_ruinarchitecture3
		global.prefetcharray[2] = bg_ruincloud
	break;
	case "dungeon":
		global.prefetcharray[0] = bg_dungeon1
		global.prefetcharray[1] = bg_dungeon1start
		global.prefetcharray[2] = bg_dungeonskeleton1
	break;
	case "ancient":
		global.prefetcharray[0] = bg_entrance1
		global.prefetcharray[1] = spr_ancienttv
		global.prefetcharray[2] = bg_darkjohn
	break;
	case "chateau":
		global.prefetcharray[0] = bg_chateau1
		global.prefetcharray[1] = spr_chateaudoor
		global.prefetcharray[2] = bg_chateautowers
	break;	
	case "sanctum":
		global.prefetcharray[0] = bg_sanctum
		global.prefetcharray[1] = bg_sanctumarchitecture3
		global.prefetcharray[2] = bg_sanctumsky
	break;	
	case "strongcold":
		global.prefetcharray[0] = bg_strongcold1
		global.prefetcharray[1] = spr_xmasdecotree
		global.prefetcharray[2] = bg_dungeonskeleton1
	break;
	default:
		global.prefetcharray[0] = bg_hubroom1
		global.prefetcharray[1] = bg_hubroom2
		global.prefetcharray[2] = spr_player_3hpidle
	break;
	global.prefetcharray[3] = spr_player_3hpidle
	global.moppingframes = 0;
}