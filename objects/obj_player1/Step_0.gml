scr_getinput()
scr_playerstate()

//Heavy
if heavy = 1 && state != 46
heavy = 0

//Clingy
if wallclingbuffer > 15
wallclingbuffer--
else
wallclingbuffer = 0
//Jetpack Controls
if jetpacking = true && !(state = 51 || sprite_index = spr_playerN_jetpackstart || sprite_index = spr_superjumpprep || sprite_index = spr_jetpack || sprite_index = spr_jetpackcrazy || sprite_index = spr_playerN_jetpackslide || sprite_index = spr_playerN_Sjump)	
jetpacking = false


//Score
global.collect = collectscore + obj_player2.collectscore
global.collectN = obj_player2.collectscore
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

if (room == Realtitlescreen || room == characterselect)
    state = 8
scr_playersounds()
if (global.coop == 0)
    fightball = 0
if (state != 91 && state != 109)
    fightball = 0
if (state != 109 && state != 73)
    thrown = 0
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
if (state == 55 && y > (room_height * 2))
{
    scr_playerreset()
    targetDoor = "A"
    room = hub_room1
    if (global.coop == 1)
    {
        with (obj_player2)
        {
            targetDoor = "A"
            scr_playerreset()
        }
    }
}
//Autopitfall
if state != 55 && y > (room_height * 1.2)
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
	with obj_tv {
        message = choose("OW!", "OUCH!", "OH!", "WOH!")
		chose = 0		
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

//i think this is where resetting variables starts
if ((!instance_exists(baddiegrabbedID)) && (state == 46 || state == 43 || state == 10))
    state = 0
if (!(state == 46 || state == 43 || state == 70))
    baddiegrabbedID = 0
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
if (global.combotime > 0) && global.pausecombotime = false
    global.combotime = (global.combotime - 0.25)
else if (global.combotime <= 0)
	global.combotime = 0
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
if (state == 70 || state == 10 || state == 44 || state == 24 || state == 15 || state == 13 || state == 18 || state == 25 || state == 27 || state == 34 || state == 40 || state == 34 || state == 37 || state == 91  || state == states.pogo ||	state == states.jetpack || state == 74 || state == 63)
    attacking = 1
else
    attacking = 0
if (state == 41 || state == 47 || state == 48 || state == 50 || state == 49)
    grabbing = 1
else
    grabbing = 0

if (state == 68 || sprite_index = spr_swingding || sprite_index = spr_player_shoryumineken || sprite_index = spr_playerN_spinjump || state == 86 || state == states.breakdance ||	state == states.jetpack || state == states.pogo || state == 91 || state == 60 || (state == 73 && thrown == 1) || state == 70 || state == 17 || state == 74 || state == 2 || state == 6 || state == 7 || state == 9 || state == 44 || state == 35 || state == 63 || state == 37 || state == 40 || state == 10 || (state == 43 && sprite_index == spr_piledriver) || state == 24 || state == 25 || state == 18 || state == 15 || state == 13 || state == 11)
    instakillmove = 1
else
    instakillmove = 0
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
if ((state == 91 || state == states.breakdance || (state != 51 && (sprite_index = spr_player_shoryumineken || sprite_index = spr_playerN_spinjump))  || (pogomovespeed >= 12  && state == states.pogo) ||state == states.jetpack || (state == 109 && instance_exists(obj_player2) && obj_player2.state == 91) || state == 114 || state == 70 || state == 17 || state == 9 || state == 37 || state == 10 || state == 22 || state == 71) && macheffect == 0)
{
    macheffect = 1
    toomuchalarm1 = 6
    with (instance_create(x, y, obj_mach3effect))
    {
        playerid = other.object_index
        image_index = (other.image_index - 1)
        image_xscale = other.xscale
        sprite_index = other.sprite_index
    }
}
if (!(state == 91 || (state != 51 && (sprite_index = spr_player_shoryumineken || sprite_index = spr_playerN_spinjump)) || state == states.breakdance || (pogomovespeed >= 12  && state == states.pogo) || state == states.jetpack || (state == 109 && instance_exists(obj_player2) && obj_player2.state == 91) || state == 114 || state == 70 || state == 17 || state == 9 || state == 37 || state == 10 || state == 22 || state == 71))
    macheffect = 0
if (toomuchalarm1 > 0)
{
    toomuchalarm1 -= 1
    if (toomuchalarm1 <= 0 && (state == 91 || state == states.breakdance ||(state != 51 && (sprite_index = spr_player_shoryumineken || sprite_index = spr_playerN_spinjump)) || (pogomovespeed >= 12  && state == states.pogo) || state == states.jetpack || state == 111 || state == 114 || (state == 109 && instance_exists(obj_player2) && obj_player2.state == 91) || state == 17 || state == 9 || state == 70 || state == 10 || state == 71 || state == 37 || state == 22 || (state == 33 && mach2 >= 100)))
    {
        with (instance_create(x, y, obj_mach3effect))
        {
            playerid = other.object_index
            image_index = (other.image_index - 1)
            image_xscale = other.xscale
            sprite_index = other.sprite_index
        }
        toomuchalarm1 = 6
    }
}
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
if (!place_meeting(x, y, obj_solid))
{
    if (state != 72 && state != states.jetpackstart && state != 86 && sprite_index != spr_breakdanceattack1 && sprite_index != spr_bombpepintro && sprite_index != spr_knightpepthunder && state != 2 && state != 6 && state != 66 && state != 15 && state != 39 && sprite_index != spr_player_crouchshoot && state != 65 && state != 33 && state != 37 && state != 73 && state != 68 && state != 67)
        mask_index = spr_player_mask
    else
        mask_index = spr_crouchmask
}
else if place_meeting(x, y, obj_solid)
    mask_index = spr_crouchmask
if (character == "S" && state == 27)
    mask_index = spr_player_mask
else if (character == "S")
    mask_index = spr_crouchmask
if (state == 23 || sprite_index == spr_knightpepstart || sprite_index == spr_knightpepthunder || state == 56 || state == 78 || state == 4 || state == 64 || state == 61 || state == 55)
    cutscene = 1
else
    cutscene = 0
if (((place_meeting(x, y, obj_door) && (!place_meeting(x, y, obj_doorblocked))) || place_meeting(x, y, obj_dresser) || place_meeting(x, y, obj_snick) || place_meeting(x, y, obj_keydoor) || (place_meeting(x, y, obj_exitgate) && global.panic == 1)) && (!instance_exists(obj_uparrow)) && scr_solid(x, (y + 1)) && state == 0 && obj_player1.spotlight == 1)
{
    with (instance_create(x, y, obj_uparrow))
        playerid = other.object_index
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
if (distance_to_object(obj_player2) > 500 && obj_player1.spotlight == 0)
    instance_create(x, y, obj_cooppointer)
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


//dougie's super magic setter
if character = "D"
{
	if key_shoot2
	{
		if spellselect < 4
			spellselect += 1
		else
			spellselect = 1
		spellshowbuffer = 150
	}
}

//dougie's spell select mockery
if spellshowbuffer > 0
	spellshowbuffer -= 1
	
if grounded
{
	floattimer = 50
	floatbuffer = false
}
	
//this section
if (global.magic > 200)
    global.magic = 200
if (global.magic < 0)
    global.magic = 0
