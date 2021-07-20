#region Enum
enum states
{
	normal = 0,
	tumble = 2,
	finishingblow = 3,
	ejected = 4,
	transitioncutscene = 5,
	fireass = 6,
	firemouth = 7,
	titlescreen = 8,
	Nhookshot = 9,
	tacklecharge = 10,
	cheeseball = 11,
	slap = 12,
	cheesepep = 13,
	cheesepepstick = 14,
	boxxedpep = 15,
	pistolaim = 16,
	climbwall = 17,
	knightpepslopes = 18,
	portal = 19,
	secondjump = 20,
	chainsawbump = 21,
	handstandjump = 22,
	gottreasure = 23,
	knightpep = 24,
	knightpepattack = 25,
	meteorpep = 26,
	bombpep = 27,
	grabbing = 28,
	chainsawpogo = 29,
	shotgunjump = 30,
	stunned = 31,
	highjump = 32,
	chainsaw = 33,
	facestomp = 34,
	timesup = 36,
	machroll = 37,
	shotgun = 38,
	pistol = 39,
	machfreefall = 40,
	throw = 41,
	slam = 42,
	superslam = 43,
	skateboard = 44,
	grind = 45,
	grab = 46,
	punch = 47,
	backkick = 48,
	uppunch = 49,
	shoulder= 50,
	backbreaker = 51,
	bossdefeat = 52,
	pizzathrow = 53,
	bossintro = 54,
	gameover = 55,
	keyget = 56,
	tackle = 57,
	jump = 58,
	ladder = 59,
	slipnslide = 60,
	comingoutdoor = 61,
	smirk = 62,
	Sjump = 63,
	victory = 64,
	Sjumpprep = 65,
	crouch = 66,
	crouchjump = 67,
	crouchslide = 68,
	mach1 = 69,
	mach2 = 70,
	machslide = 71,
	bump = 72,
	hurt = 73,
	freefall = 74,
	hang = 75,
	freefallland = 77,
	door = 78,
	barrelfloat = 80,
	barrelmach2 = 81,
	barrelmach1 = 82,
	barrelfall = 83,
	barrelnormal = 84,
	barrelslipnslide = 85,
	barrelroll = 86,
	current = 87,
	boulder = 88,
	taxi = 89,
	runonball = 90,
	mach3 = 91,
	freefallprep = 92,
	Sjumpland = 93,
	grabbed = 109,
	throwdynamite = 110,
	kingknightroll = 111,
	golf = 112,
	bashhit = 113,
	parry = 114,
	uppercut = 115,
	pipe = 116,
	jetpack = 117,
	jetpackstart = 118,
	pogo = 119,
	wallcling = 120,
	breakdance = 121,
	frozen = 122,
	changing = 123,
	murder = 124

} 
//I made some changes to it so that we can know at a glance what number it gets converted to.
#endregion

switch state
{
    case 0:
        scr_player_normal()
        break
    case states.frozen:
        scr_player_frozen()
        break		
    case 109:
        scr_player_grabbed()
        break
	case states.changing:
		scr_player_changing()
		break;		
    case states.murder:
        scr_player_murder()
        break				
	case states.pipe:
        scr_player_pipe()
        break
	case states.jetpack:
        scr_player_jetpack()
        break
	case states.jetpackstart:
        scr_player_Sjumpjetpackprep()
        break;		
	case states.pogo:
        scr_player_pogo()
        break
	case states.wallcling:
        scr_player_wallcling()
        break;		
	case states.breakdance:
        scr_player_breakdance()
        break
    case 110:
        scr_player_throwdynamite()
        break
    case 111:
        scr_player_kingknightroll()
        break
    case 112:
        scr_player_golf()
        break
    case 113:
        scr_player_bashhit()
        break
    case 114:
        scr_player_parry()
        break
    case 3:
        scr_player_finishingblow()
        break
    case 2:
        scr_player_tumble()
        break
    case 8:
        scr_player_titlescreen()
        break
    case 4:
        scr_player_ejected()
        break
    case 7:
        scr_player_firemouth()
        break
    case 6:
        scr_player_fireass()
        break
    case 5:
        scr_player_transitioncutscene()
        break
    case 9:
        scr_playerN_hookshot()
        break
    case 12:
        scr_player_slap()
        break
    case 10:
        scr_player_tacklecharge()
        break
    case 13:
        scr_player_cheesepep()
        break
    case 11:
        scr_player_cheeseball()
        break
    case 14:
        scr_player_cheesepepstick()
        break
    case 15:
        scr_player_boxxedpep()
        break
    case 16:
        scr_player_pistolaim()
        break
    case 17:
        scr_player_climbwall()
        break
    case 18:
        scr_player_knightpepslopes()
        break
    case 19:
        scr_player_portal()
        break
    case 20:
        scr_player_secondjump()
        break
    case 21:
        scr_player_chainsawbump()
        break
    case 22:
        scr_player_handstandjump()
        break
    case 23:
        scr_player_gottreasure()
        break
    case 24:
        scr_player_knightpep()
        break
    case 25:
        scr_player_knightpepattack()
        break
    case 26:
        scr_player_meteorpep()
        break
    case 27:
        scr_player_bombpep()
        break
    case 28:
        scr_player_grabbing()
        break
    case 29:
        scr_player_chainsawpogo()
        break
    case 30:
        scr_player_shotgunjump()
        break
    case 31:
        scr_player_stunned()
        break
    case 32:
        scr_player_highjump()
        break
    case 33:
        scr_player_chainsaw()
        break
    case 34:
        scr_player_facestomp()
        break
    case 36:
        scr_player_timesup()
        break
    case 37:
        scr_player_machroll()
        break
    case 39:
        scr_player_pistol()
        break
    case 38:
        scr_player_shotgun()
        break
    case 40:
        scr_player_machfreefall()
        break
    case 41:
        scr_player_throw()
        break
    case 43:
        scr_player_superslam()
        break
    case 42:
        scr_player_slam()
        break
    case 44:
        scr_player_skateboard()
        break
    case 45:
        scr_player_grind()
        break
    case 46:
        scr_player_grab()
        break
    case 47:
        scr_player_punch()
        break
    case 48:
        scr_player_backkick()
        break
    case 49:
        scr_player_uppunch()
        break
    case 50:
        scr_player_shoulder()
        break
    case 51:
        scr_player_backbreaker()
        break
    case 52:
        scr_player_bossdefeat()
        break
    case 54:
        scr_player_bossintro()
        break
    case 62:
        scr_player_smirk()
        break
    case 53:
        scr_player_pizzathrow()
        break
    case 55:
        scr_player_gameover()
        break
    case 93:
        scr_player_Sjumpland()
        break
    case 92:
        scr_player_freefallprep()
        break
    case 90:
        scr_player_runonball()
        break
    case 88:
        scr_player_boulder()
        break
    case 56:
        scr_player_keyget()
        break
    case 57:
        scr_player_tackle()
        break
    case 60:
        scr_player_slipnslide()
        break
    case 59:
        scr_player_ladder()
        break
    case 58:
        scr_player_jump()
        break
    case 64:
        scr_player_victory()
        break
    case 61:
        scr_player_comingoutdoor()
        break
    case 63:
        scr_player_Sjump()
        break
    case 65:
        scr_player_Sjumpprep()
        break
    case 66:
        scr_player_crouch()
        break
    case 67:
        scr_player_crouchjump()
        break
    case 68:
        scr_player_crouchslide()
        break
    case 69:
        scr_player_mach1()
        break
    case 70:
        scr_player_mach2()
        break
    case 91:
        scr_player_mach3()
        break
    case 71:
        scr_player_machslide()
        break
    case 72:
        scr_player_bump()
        break
    case 73:
        scr_player_hurt()
        break
    case 74:
        scr_player_freefall()
        break
    case 77:
        scr_player_freefallland()
        break
    case 75:
        scr_player_hang()
        break
    case 78:
        scr_player_door()
        break
    case 84:
        scr_player_barrelnormal()
        break
    case 83:
        scr_player_barrelfall()
        break
    case 82:
        scr_player_barrelmach1()
        break
    case 81:
        scr_player_barrelmach2()
        break
    case 80:
        scr_player_barrelfloat()
        break
    case 79:
        scr_player_barrelcrouch()
        break
    case 85:
        scr_player_barrelslipnslide()
        break
    case 86:
        scr_player_barrelroll()
        break
    case 87:
        scr_player_current()
        break
    case 89:
        scr_player_taxi()
        break
}
//Water
if place_meeting(x,y,group_cheesewater) 
{
	with instance_place(x,y,group_cheesewater)
	if other.bbox_top > bbox_top
		other.in_water = true
}
else
{
	in_water = false
}

if in_water = true
{
	if vsp > 15
		vsp = 15
    var bubble = random_range(1, 100)
    if (bubble >= 99)
    {
		with instance_create(x,y,obj_waterbubble)
			depth = other.depth - 5
    }	
	
}
//Murder
if combothreshold >= 10
{
	murderammo = clamp(murderammo + 1,0,4);
	combothreshold = 0;
}
if global.combotime <= 0
{
	combothreshold = 0;
}

//Palette
if surface_exists(surf_pallete) && (paletteselect >= sprite_get_width(spr_palette) - 1)
	custompalette = true
else if (paletteselect < sprite_get_width(spr_palette) - 1)
	custompalette = false

//Vigi Health nerf
if vigihealth > 100 && vigitimer <= 0
{
	vigitimer = 100
	vigihealth = vigihealth - 5
}
else if vigihealth <= 100
	vigitimer = 100
	
vigitimer--

vigihealth = clamp(vigihealth,0,250)
//Supertaunt
if global.combo >= 3 && supertauntbuffer < 500 && supertauntcharged = false
	supertauntbuffer++
else if supertauntbuffer > 0
	supertauntbuffer--
if supertauntbuffer >= 500 && supertauntcharged = false && state != states.backbreaker && global.miniboss = false
{
	supertauntbuffer = 500;
	supertauntcharged = true;
}
if (supertauntbuffer <= 0 && supertauntcharged = true) || global.combo < 3 
{
	supertauntbuffer = 0;
	supertauntcharged = false;
}
if supertauntcharged = true  && room != rank_room
{
	if !instance_exists(supertaunteffect)
		with instance_create(x,y,obj_supertaunteffect) 
		{
			other.supertaunteffect = id
			playerid = other.id
		}
}
//Mach3DashBuffer
if mach3dash = false
	mach3dashbuffer = 25
else if mach3dash = true && mach3dashbuffer > 0
	mach3dashbuffer--

if mach3dashbuffer <= 0
	mach3dash = false
//Timesup
if (state == 55 && y > (room_height * 2))
{
	global.levelname = "none";
    global.fakepeppino = 0;
    script_execute(scr_playerreset);
	var _backtohub = hub_room1;
	with obj_player
	{
		targetDoor = "start";
		_backtohub = backtohubroom
	}
    room = _backtohub
}
//Knight ground pond
if state != states.knightpep && state != states.knightpepslopes && state != states.knightpepattack
{
	knightpoundbuffer = 0;
}
//Mach 3 Effect
if global.freezeframe = false {
if ((state == 91 || state == states.Sjump || state == states.breakdance || (state != 51 && (sprite_index = spr_player_shoryumineken || sprite_index = spr_playerN_spinjump))  || (pogomovespeed >= 12  && state == states.pogo) ||state == states.jetpack || (state == 109 && instance_exists(obj_player2) && obj_player2.state == 91) || state == 114 || state == 70 || state == 17 || state == 9 || state == 37 || state == 10 || state == 22 || state == 71 || pogojetcharge = true) && macheffect == 0)
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
if (!(state == 91 || (state != 51 && (sprite_index = spr_player_shoryumineken || sprite_index = spr_playerN_spinjump)) || state == states.breakdance || (pogomovespeed >= 12  && state == states.pogo) || state == states.Sjump || state == states.jetpack || (state == 109 && instance_exists(obj_player2) && obj_player2.state == 91) || state == 114 || state == 70 || state == 17 || state == 9 || state == 37 || state == 10 || state == 22 || state == 71 || pogojetcharge = true))
    macheffect = 0
if (toomuchalarm1 > 0)
{
    toomuchalarm1 -= 1
    if (toomuchalarm1 <= 0 && (state == 91  || state == states.Sjump || state == states.breakdance ||(state != 51 && (sprite_index = spr_player_shoryumineken || sprite_index = spr_playerN_spinjump)) || (pogomovespeed >= 12  && state == states.pogo) || state == states.jetpack || state == 111 || state == 114 || (state == 109 && instance_exists(obj_player2) && obj_player2.state == 91) || state == 17 || state == 9 || state == 70 || state == 10 || state == 71 || pogojetcharge = true || state == 37 || state == 22 || (state == 33 && mach2 >= 100)))
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
}