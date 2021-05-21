if (room == PP_room1 && global.snickchallenge == 0)
{
    global.srank = 1005000
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == entrance_1 && global.snickchallenge == 0)
{
    global.srank = 14750
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == medieval_1 && global.snickchallenge == 0)
{
    global.srank = 13850
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == ruin_1 && global.snickchallenge == 0)
{
    global.srank = 18500
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == dungeon_1 && global.snickchallenge == 0)
{
    global.srank = 19550
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}

if (room == medieval_1 && global.snickchallenge == 1) //Snick Challenge
{
    global.srank = 8300
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == ancient_1 && global.snickchallenge == 0)
{
    global.srank = 22000
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == chateau_1 && global.snickchallenge == 0)
{
    global.srank = 14700
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}

if (room == strongcold_10 && global.snickchallenge == 0)
{	
    global.srank = 19700
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}
/*
if (room == desert_1 && global.snickchallenge == 0)
{
    global.srank = 13800
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == factory_1 && global.snickchallenge == 0)
{
    global.srank = 8400
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == freezer_1 && global.snickchallenge == 0)
{
    global.srank = 8250
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == sewer_1 && global.snickchallenge == 0)
{
    global.srank = 7000
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == golf_1 && global.snickchallenge == 0)
{
    global.srank = 6000
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == mansion_1 && global.snickchallenge == 0)
{
    global.srank = 12250
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}*/

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