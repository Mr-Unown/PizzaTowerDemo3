global.wateralpha = 0.85
global.storedtaminute = 0;
global.storedtasecond = 0;
breakdancebuffer = 50
collectscore = 0
knightpoundbuffer = 0;
knightmaxy = 0;
knightroomy = 0;
knightslidespeed = 0;
//Global Time Events
global.timeevent = 0 //1 = Xmas 2 = April 3 = Halloween

//Bumbo want coin
pizzacoin = 0;
pizzacoinindicatorid = noone;
shieldindicatorid = noone;
if !instance_exists(pizzacoinindicatorid)
	with instance_create(x,y,obj_pizzacoinindicator)
	{
		other.pizzacoinindicatorid = id
		player = other.id
	}
if !instance_exists(shieldindicatorid)
	with instance_create(x,y,obj_shieldbackupindicator)
	{
		other.shieldindicatorid = id
		player = other.id		
	}


//Funny Murder
murderammo = 0;
combothreshold = 0;

//Funny Peter
global.draw_peter = false;
global.deathmode = false;
//Up arrow
uparrowid = noone
//Super Taunts
supertauntbuffer = 0;
supertauntcharged = false;
supertaunteffect = noone;
//Pizza Shield
pizzashield = false;
pizzashieldbackup = 0;
pizzashieldframes = 0;
//Vigi Health nerf
vigitimer = 100
//Mach3DashBuffer
mach3dash = false;
mach3dashbuffer = 0;

global.freezeframe = false;
global.freezeframetimer = 200;

//global.sleepScale = 1;
//global.sleepAcc = 0;
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
grindeffect = noone
//New Palette
surf_width = 2
surf_height = 6

surf_pallete = -1
if !surface_exists(surf_pallete)
surf_pallete = surface_create(surf_width,surf_height)

custompalette = false

//Stored Stuff
frozenstate = 0;
frozenspriteindex = spr_player_idle;
frozenimageindex = 0;
frozenimagespeed = 0.35;
frozenmovespeed = 0;
frozengrav = 0.35;
frozensmash = 0;
frozenhsp = 0;
frozenvsp = 0;
frozenjumpbuffer = 0;


global.pausecombotime = false


#region Followers
if instance_exists(obj_pizzakinshroom) 
	instance_destroy(obj_pizzakinshroom)
if instance_exists(obj_pizzakincheese) 
	instance_destroy(obj_pizzakincheese)
if instance_exists(obj_pizzakintomato) 
	instance_destroy(obj_pizzakintomato)
if instance_exists(obj_pizzakinsausage)
	instance_destroy(obj_pizzakinsausage)
if instance_exists(obj_pizzakinpineapple)
	instance_destroy(obj_pizzakinpineapple)
if instance_exists(obj_noisebomb)
	instance_destroy(obj_noisebomb)	
if instance_exists(obj_gerome)
	instance_destroy(obj_gerome)
if instance_exists(obj_peshino)
	instance_destroy(obj_peshino)	
	
global.follower = ds_list_create();
ds_list_clear(global.follower);

global.shroomfollow = false;
global.cheesefollow = false;
global.tomatofollow = false;
global.sausagefollow = false;
global.pineapplefollow = false;
global.noisebombfollow = false;
global.geromefollowing = false;
global.peshinofollowing = false;
global.geromeopen = false;
#endregion


//dougies super magic
floatbuffer = false
floattimer = 50
spellselect = 1
spellshowbuffer = 0
spellcastedonce = false;
global.magic = 50

