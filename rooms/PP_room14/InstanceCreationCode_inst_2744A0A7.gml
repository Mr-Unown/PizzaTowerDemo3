targetRoom = hub_room1
if instance_exists(obj_endlevelfade)
    instance_destroy(obj_endlevelfade);
	
with obj_discordrpc
{
	alarm[0] = -1;
}
//Goop Gone
with obj_goop 
{
	instance_destroy(id,false);
}
//Lighting
with obj_lighting
{
	darkness = 0;
	targetdarkness = 0;
}
global.style = 0;
global.stylethreshold = 0;
global.freezeframe = false;
global.switchblock = 0;
global.soundposoffset = 0;
global.scrolloffset = 0;
global.timeractive = 0;
global.wave = 0;
global.maxwave = 0;
global.golfbuffer = 0;
global.secretfound = 0;
global.hurtcounter = 0;
global.snickchallenge = 0;
global.timeattack = 0;
if instance_exists(obj_snickexe)
    instance_destroy(obj_snickexe);
obj_timeattack.stop = 0;
global.taseconds = 0;
global.taminutes = 0;
obj_camera.golf = 0;
obj_camera.greyscalefade = 0;
with obj_camera
{
	global.hitstunalarm = -1
	alarm[3] = -1
	golf = 0;
	greyscalefade = 0;
	//Number
	_image_index = 0;
	_image_speed = 0;
	newhudyoffset = 0;
	//Shake
	shakemag = 0;	
	colors[0] = choose(0,1,2,3)
}
if instance_exists(obj_coopflag)
    instance_destroy(obj_coopflag);
global.miniboss = 0;
global.lapping = 0;
global.laptouched = 0;
global.christmasend = 0;
global.nocombo = 0;
global.storedgun = 0;
global.golfhit = 0;
with (obj_tv)
{
    shownranks = 0;
    shownranka = 0;
    shownrankb = 0;
    shownrankc = 0;
    showntimeranks = 0;
    showntimeranka = 0;
    showntimerankb = 0;
    showntimerankc = 0;
	showntimerankd = 0;
	imageindexstore = 0;
}
global.SAGEshotgunsnicknumber = 0;
with obj_music
{
	fadeoff = 0;
}
if instance_exists(obj_timesup)
    instance_destroy(obj_timesup);


ds_list_clear(global.saveroom);
ds_list_clear(global.baddieroom);
ds_list_clear(global.gooproom);


global.ruinmusic = 0;
global.style = 0
global.stylethreshold = 0
global.combo = 0
global.combotime = 0
with obj_player1
{
	collectscore = 0
}
with obj_player2
{
	collectscore = 0
}
