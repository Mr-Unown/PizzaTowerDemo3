function scr_enemycreate() {
	if panic_escape == true && global.panic == false
		instance_destroy(id,false)
	enemydraw_angle = 0;
	bombreset = 0
	dropcoin = 0
	shake = 0
	shakebuffer = 2.5
	blowdirection = 0
	blowintensity = 1
	scarebuffer = 0
	parry = 0
	markedfordeath = 0
	markedfordeathbuffer = 50
	deathbuffer = 100
	playerxscale = obj_player1.xscale
	dying = false
	creatorid = noone
	//Squash and Stretch
	squashval = 0;
	squashed = false;
	//Funny Dramatic Supertaunt shake
	newshakebuffer = 0;
	//Stupid anti Strongcold softlock
	stuntouch = 0
	//Death Sprite
	initialvsp = random_range(-5, -10)
	initialhsp = irandom_range(8, 15) * choose(1,-1)
	//Stored Stuff
	frozenstate = 0;
	frozenspriteindex = spr_player_idle;
	frozenimageindex = 0;
	frozenimagespeed = 0.35;
	frozenmovespeed = 0;
	frozengrav = 0.35;
	frozenhsp = 0;
	frozenvsp = 0;
	//Palette
	spr_palette = spr_null;
	paletteselect = 0;
	hitboxcreate = false;
	heatreset = 0;
	heatbuffer = 0;
	alarm[4] = 10
	dashcloudid = noone
	invincible = 0


	//april build stuff
	stuntouchbuffer = 0;
	invtime = 0
	instakilled = 0
	hithsp = 0
	hitvsp = 0
	hittinged = false
	//finishing blow spin
	canrotate = false
    rotatedirection = choose(-1,1)
    rotatevalue = irandom_range(5,20)
}
