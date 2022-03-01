function scr_playercreate() {
	//Wow
	scale = 1;
	secreteye = false;
	actor = false;
	//Jump Height Trolling
	jumpheight = -11;
	in_water = false;
	//End Combo
	endcombo = false
	//Topping Trail
	toomanytoppings = 0;
	//Heateffect
	heatafterimage_id = noone;
	//Substate
	substate = 0;
	//Suplex
	suplexdashtimer = 0;
	//global.wateralpha = 0.85
	global.storedtaminute = 0;
	global.storedtasecond = 0;
	breakdancebuffer = 50
	collectscore = 0
	//Comboend
	storedscore = 0
	knightpoundbuffer = 0;
	knightmaxy = 0;
	knightroomy = 0;
	knightslidespeed = 0;
	//Taunt shit
	tauntstoredstate = 0
	tauntstoredmovespeed = 6
	tauntstoredsprite = spr_null
	tauntstoredimage = 0
	taunttimer = 20	
	//Direction Bomb
	playerdirection = 0;
	//Super cool Movespeed Buff
	maxmachspeed = 24;
	//Swordhitbox
	swordhitboxid = noone;
	//Firetrail
	firetrailbuffer = 100;
	//Mort
	mortanim = 0
	//Trick
	show_tricks = false;
	tricksperformed = 0;
	//Slope Angle
	draw_angle = 0;
	//P Rank
	global.got_hurt = false;
	global.comboended = false;
	//Global Time Events
	global.timeevent = 0 //1 = Xmas 2 = April 3 = Halloween
	//Pistol Animation
	global.pistolshotanim = 0
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
	//Machroll
	machrolljump = false;
	global.freezeframe = false;
	global.freezeframetimer = 200;

	//global.sleepScale = 1;
	//global.sleepAcc = 0;
	global.collect = 0
	global.collectN = 0
	global.timeattackpoints = 0
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
	initialfreefallvsp = 15
	initialsuperjumpvsp = -12
	bouncevsp = -6
	bouncehsp = 6
	//New Palette
	surf_width = 2
	surf_height = 10

	surf_pallete = -1
	if !surface_exists(surf_pallete)
	surf_pallete = surface_create(surf_width,surf_height)

	custompalette = false
	customupdate = true;
	//Stored Stuff
	frozenstate = 0;
	frozenspriteindex = spr_file2;
	frozenimageindex = 0;
	frozenimagespeed = 0.35;
	frozenmovespeed = 0;
	frozengrav = 0.35;
	frozensmash = 0;
	frozenhsp = 0;
	frozenvsp = 0;
	frozenjumpbuffer = 0;
	frozenalarm[0] = -1;
	frozenalarm[1] = -1;
	frozenalarm[2] = -1;
	frozenalarm[3] = -1;
	frozenalarm[4] = -1;
	frozenalarm[5] = -1;
	frozenalarm[6] = -1;
	frozenalarm[7] = -1;
	frozenalarm[8] = -1;
	frozenalarm[9] = -1;
	frozenalarm[10] = -1;

	global.pausecombotime = false
	
	//rocket stuff tehres literally one variab
	rocketup = 0
	//Pizza delivery
	global.pizzasdelivered = 0
	global.showgnomelist = 0
    global.failcutscene = 0
    global.pizzadelivery = 0
    global.hp = 8
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
	

	ds_list_clear(global.toppinlist);
	ds_list_clear(global.follower);

	global.shroomfollow = false;
	global.cheesefollow = false;
	global.tomatofollow = false;
	global.sausagefollow = false;
	global.pineapplefollow = false;
	global.noisebombfollow = false;
	global.geromefollowing = false;
	global.peshinofollowing = false;
	global.mortfollowing = false;
	global.geromeopen = false;
#endregion
	//gustavo rat check
	brick = 1

	//dougies super magic
	floatbuffer = false
	floattimer = 50
	spellselect = 1
	spellshowbuffer = 0
	spellcastedonce = false;
	global.magic = 50




}
