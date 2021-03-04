breakdancebuffer = 50
collectscore = 0
global.collect = 0
global.collectN = 0
pogojetcharge = false
pogojetchargebuffer = 0
flashing = false
flashingtimer = 0
jetpacking = false
pogobounces = 0
pogomovespeed = 0
pogoed = true
wallclingbuffer = 15

//New Palette
surf_width = 2
surf_height = 6

surf_pallete = -1
if !surface_exists(surf_pallete)
surf_pallete = surface_create(surf_width,surf_height)

custompalette = false


global.pausecombotime = false
global.geromefollowing = false
//Follower Array
global.followerqueue = 0
//Default Arrangements
//This is the Array to Handle Arrangements
global.followerarray[0] = obj_pizzakinshroom;
global.followerarray[1] = obj_pizzakincheese;
global.followerarray[2] = obj_pizzakintomato;
global.followerarray[3] = obj_pizzakinsausage;
global.followerarray[4] = obj_pizzakinpineapple;
global.followerarray[5] = obj_gerome;
//This is the Array that handles object index
global.follower[obj_pizzakinshroom] = 0;
global.follower[obj_pizzakincheese] = 1;
global.follower[obj_pizzakintomato] = 2;
global.follower[obj_pizzakinsausage] = 3;
global.follower[obj_pizzakinpineapple] = 4;
global.follower[obj_gerome] = 5;

