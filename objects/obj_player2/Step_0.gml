scr_playerstate()
//No more Shadows
if image_blend != make_colour_hsv(0, 0, 255) && state != states.comingoutdoor {
	image_blend = make_colour_hsv(0, 0, 255)
}

//Heavy
if heavy = 1 && state != 46
heavy = 0


//Clingy
if wallclingbuffer > 15
wallclingbuffer--
else
wallclingbuffer = 0
//Jetpack Controls
if jetpacking = true && state != states.frozen && !(state = states.pipe ||state = states.Sjump || sprite_index = spr_playerN_jetpackstart || sprite_index = spr_superjumpprep || sprite_index = spr_jetpack || sprite_index = spr_jetpackcrazy || sprite_index = spr_playerN_jetpackslide || sprite_index = spr_playerN_Sjump)	
	jetpacking = false

//Pogo
if pogojetchargebuffer > 0
		pogojetchargebuffer--
if pogojetchargebuffer <= 0 {
		pogojetchargebuffer = 0
		pogojetcharge = false
}
if pogojetcharge = true && sprite_index = spr_playerN_pogofall
	sprite_index = spr_playerN_pogofallcharged

if pogojetcharge = true && sprite_index = spr_playerN_pogo
	sprite_index = spr_playerN_pogocharged
	

//Flashing
if pogojetcharge = true
	flashing = true
else
	flashing = false
if flashing = true
{
flashingtimer++
	if flashingtimer >= 25 {
	 flash = 1	
	 flashingtimer = 0
	}
}


if (room == global.roomstart[global.newtitlescreen] || room == characterselect)
    state = 8
if (state != 109 && state != 73)
    thrown = 0
if (global.coop == 0)
    fightball = 0
if (state != 91 && state != 109)
    fightball = 0
//Coop GONE
if (key_start && global.coop == 1 && fightball == 0 && !instance_exists(obj_palettechanger))
{
	if (!instance_exists(obj_coopflag))
		instance_destroy(obj_coopflag);
    with (instance_create(x, y, obj_dashcloud))
        sprite_index = spr_bombexplosion
    repeat (6)
        instance_create(x, y, obj_baddiegibs)
    global.coop = 0
    obj_player1.spotlight = 1
    obj_player1.depth = -7
    scr_soundeffect(sfx_explosion)
}
if (global.coop == 0)
{
    obj_player1.spotlight = 1
    x = -1000
    y = 500
    state = 8
}
scr_playersounds()
if (grounded && state != 22)
    suplexmove = 0
if (state != 74)
    freefallsmash = 0
if (global.playerhealth <= 0 && state != 55)
{
    image_index = 0
    sprite_index = spr_deathstart
    state = 55
}

//Autopitfall
if state != 55 && !instance_exists(obj_fadeout) && !place_meeting(x,y,obj_hallway) && !place_meeting(x,y,obj_pitfall) && !place_meeting(x,y,obj_pitcollider) && y > (room_height * 1.3)
{
	{
		
	global.pausecombotime = true
	obj_tv.alarm[1] = 75		
	x = roomstartx
	y = roomstarty
	visible = true
	state = 73
    alarm[8] = 80
    alarm[7] = 50
	hurted = 1
    if (xscale == other.image_xscale)
            sprite_index = spr_hurtjump
    else
            sprite_index = spr_hurt
	with obj_tv
	{
		image_speed = 0.1
		showtext = 1
		if (chose == 0)
			_message = choose("OW!", "OUCH!", "OH!", "WOH!")
		alarm[0] = 50
		chose = 1
		tvsprite = spr_tvhurt
		once = 1		
	}
    movespeed = 1
    vsp = -5
	timeuntilhpback = 300
	grav = 0.5
}
repeat (3)
{
   with (instance_create((roomstartx + random_range(-32, 32)), (roomstarty + random_range(-32, 32) - 40), obj_balloonpop))
      sprite_index = spr_shotgunimpact
}

instance_create(roomstartx,roomstarty - 50 ,obj_handgrabber)
}

if ((!instance_exists(baddiegrabbedID)) && (state == 46 || state == states.golf || state == 43 || state == 10))
    state = 0
if (!(state == 46 || state == states.frozen || state == 43 || state == states.golf || state == 10))
    baddiegrabbedID = noone
if grinding && !cutscene && !scr_transformationcheck(id)
    state = 45
if (anger == 0)
    angry = 0
if (anger > 0)
{
    angry = 1
    anger -= 1
}
if (sprite_index == spr_winding && state != 0)
    windingAnim = 0
if (state != 46)
    swingdingbuffer = 0
if (sprite_index == spr_player_idlevomit && image_index > 28 && image_index < 43)
    instance_create((x + random_range(-5, 5)), (y + 46), obj_vomit)
if (sprite_index == spr_player_idlevomitblood && image_index > 28 && image_index < 43)
{
    with (instance_create((x + random_range(-5, 5)), (y + 46), obj_vomit))
        sprite_index = spr_vomit2
}
if (global.playerhealth == 1 && (!instance_exists(obj_sweat)) && obj_player.state == 0)
    instance_create(x, y, obj_sweat)
if (angry == 1 && (!instance_exists(angryeffectid)) && state == 0)
{
    with (instance_create(x, y, obj_angrycloud))
    {
        playerid = other.object_index
        other.angryeffectid = id
    }
}
if (global.combotime == 0 && global.combo != 0)
    global.combo = 0
if (input_buffer_jump < 8)
    input_buffer_jump++
if (input_buffer_secondjump < 8)
    input_buffer_secondjump++
if (input_buffer_highjump < 8)
    input_buffer_highjump++
if (shotgunshootbuffer > 50)
    shotgunshootbuffer = 50
if (shotgunshootbuffer < 50)
    shotgunshootbuffer++
if (key_particles == 1)
    instance_create(random_range((x + 25), (x - 25)), random_range((y + 35), (y - 25)), obj_keyeffect)
if (inv_frames == 0 && hurted == 0)
    image_alpha = 1
if (state == 70 || sprite_index = spr_player_shoryumineken ||  sprite_index = spr_playerN_spinjump || state == 10 || state == 44 || state == 24 || state == 15 || state == 13 || state == 18 || state == 25 || state == 27 || state == 34 || state == 40 || state == 34 || state == 37 || state == 91 || state == states.pogo || state == states.jetpack || state == 74 || state == 63)
    attacking = 1
else
    attacking = 0
if (state == 41 || state == 47 || state == 48 || state == 50 || state == 49)
    grabbing = 1
else
    grabbing = 0


if (flash == 1 && alarm[0] <= 0)
    alarm[0] = (0.15 * room_speed)
if (state != 91 && state != 71)
    autodash = 0
if ((state != 58 && state != 67 && state != 12) || vsp < 0)
    fallinganimation = 0
if (state != 77 && state != 0 && state != 71)
    facehurt = 0
if (state != 0 && state != 71)
    machslideAnim = 0
if (state != 0)
{
    idle = 0
    dashdust = 0
}
if (state != 69 && state != 58 && state != 9 && state != 22 && state != 0 && state != 70 && state != 91 && state != 92 && state != 24 && state != 38 && state != 18)
    momemtum = 0
if (state != 63 && state != 65)
    a = 0
if (state != 34)
    facestompAnim = 0
if (state != 74 && state != 34 && state != 43 && state != 77)
    superslam = 0
if (state != 70)
    machpunchAnim = 0
if (state != 58)
    ladderbuffer = 0
if (state != 58)
    stompAnim = 0

if (y < -800) && state = 63
{
	superspringjump = 0
    x = roomstartx
    y = -500
    state = 74
    vsp = 10
}
if (character == "S")
{
    if (state == 67 || state == 66)
        state = 0
}



if (((place_meeting(x, y, obj_door) && (!place_meeting(x, y, obj_doorblocked))) || place_meeting(x, y, obj_hatstand) || place_meeting(x, y, obj_olddresser) || place_meeting(x, y, obj_dresser) || place_meeting(x,y, obj_door2) || place_meeting(x,y,obj_geromedoor)|| place_meeting(x, y, obj_snick) || place_meeting(x, y, obj_keydoor) || (place_meeting(x, y, obj_exitgate) && (global.panic == 1 || global.snickchallenge == true))) && (!instance_exists(uparrowid)) && scr_solid(x, (y + 1)) && state == 0 && obj_player1.spotlight == 1)
{
    with (instance_create(x, y, obj_uparrow))
	{
		other.uparrowid = id
        playerid = other.object_index
	}
}
if (state == 70 && (!instance_exists(speedlineseffectid)))
{
    with (instance_create(x, y, obj_speedlines))
    {
        playerid = other.object_index
        other.speedlineseffectid = id
    }
}
scr_collide_destructibles()
if (state != 8 && state != 109 && state != 78 && state != 63 && state != 4 && state != 61 && state != 88 && state != 56 && state != 64 && state != 19 && state != 36 && state != 23 && state != 55)
    scr_collide_player()
if (state == 88)
    scr_collide_player()
if (GshotgunAnim == 1 && character != "S" && character != "V")
    shotgunAnim = 1
else
    shotgunAnim = 0
if (Gbackupweapon == 1 && character != "S" && character != "V")
    backupweapon = 1
else
    backupweapon = 0
if (turnbuffer < 50)
    turnbuffer++


