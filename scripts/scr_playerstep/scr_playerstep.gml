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
		toss = 41,
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
		murder = 124,
		trick = 125,
		newbomb = 126,
		startgate = 127,
		rocket = 128,
		ratmount = 129,
		slipbanana = 130

	} 
	//I made some changes to it so that we can know at a glance what number it gets converted to.
#endregion
function scr_playerstep() {
	
if actor = false
{
#region States

	switch state
	{
	    case 0:
	        scr_player_normal()
	        break
	    case states.startgate:
	        scr_player_startgate()
	        break			
	    case states.newbomb:
	        scr_player_newbomb()
	        break			
	    case states.frozen:
	        scr_player_frozen()
	        break	
	    case states.trick:
	        scr_player_trick()
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
		case states.rocket:
			scr_player_rocket()
			break
		case states.ratmount:
			scr_player_ratmount()
			break
		case states.slipbanana:
			scr_player_slipbanana()
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

#endregion
}
else if actor = true
{
	scr_player_actor();
}


	//Unused
	#region Jump Height
	/*
	var _jumpheight = 0;
	switch character
	{
		case "P":
			_jumpheight = -11;
		break;
		case "N":
			_jumpheight = (pogo == true ? -9 : -13);
		break;
		case "S":
			_jumpheight = -12;
		break;
		case "V":
			_jumpheight = -13;
		break;
		case "PM":
			_jumpheight = -9;
		break;	
		case "D":
			_jumpheight = -13;
		break;	
		case "PZ":
			_jumpheight = -12;
		break;
		default:
			_jumpheight = -11;
		break;
	}
	
	jumpheight = _jumpheight + (in_water == true ? -2 : 0)*/
	#endregion
	
	//Water
	in_water = (instance_exists(obj_water) && obj_water.bbox_top < y);
	if in_water = true
	{
	    if chance(0.99) == false
		{
			with instance_create(x , y, obj_waterbubble)
				depth = other.depth - 5
		}
	}

	//Up Arrow
	if (((place_meeting(x, y, obj_door) && (!place_meeting(x, y, obj_doorblocked))) || place_meeting(x, y, obj_olddresser) || place_meeting(x, y, obj_optionsdoor) || place_meeting(x, y, obj_dresser) || place_meeting(x,y, obj_door2) || place_meeting(x,y,obj_geromedoor) || place_meeting(x, y, obj_hatstand) || place_meeting(x, y, obj_snick) || place_meeting(x, y, obj_keydoor) || (place_meeting(x, y, obj_exitgate) && (global.panic == 1 || global.snickchallenge == true))) && (!instance_exists(uparrowid)) && scr_solid(x, (y + 1)) && state == 0 && obj_player1.spotlight == 1)
	{
		with (instance_create(x, y, obj_uparrow))
		{
			other.uparrowid = id
	        playerid = other.object_index
		}
	}	

#region State Stuff
/*
	var subtle_var = 5, speed_var = 0;
	switch state
	{
		case states.normal:
		subtle_var = 3
		//subtle_var = 1
		break;
		case states.machroll:
		case states.tumble:
		case states.crouch:
		case states.crouchslide:
		subtle_var = 1.15
		break;
		case states.breakdance:
		subtle_var = 1.25
		break;
		case states.mach1:
		subtle_var = 2
		break;
		case states.mach3:
		case states.mach2:
		case states.machslide:
		case states.jetpack:
		subtle_var = 1.5
		break;
		case states.knightpepslopes:
		subtle_var = 1.25
		break;
		default:
		subtle_var = 5
		break;
	}*/
#endregion

#region Slope Angles
	if global.freezeframe = false && actor = false && sprite_index != spr_knightpepdownslope && grounded && vsp >= 0 && !(state = states.climbwall || state = states.jetpack || state = states.tumble || state = states.wallcling || state = states.machslide || state = states.pogo || state = states.tacklecharge || state = states.grab || state  = states.freefallland || state = states.shotgun || state = states.finishingblow)
	{
			//var f = true
			//some stuff stolen from orbinaut framework		 :troll:
			//TO DO: performance check
			if abs(hsp) >= 8
			{
				var targetangle  = scr_slopeangle();
				var RotationStep = (abs(hsp) / 16 + abs(hsp) / 32 - 2) * -1
			}
			else 
			{
				var targetangle  = 360;		
				var RotationStep = (abs(hsp) / 16 - 2) * -1
			}		
			draw_angle = darctan2(dsin(targetangle) + dsin(draw_angle) * RotationStep, dcos(targetangle) + dcos(draw_angle) * RotationStep);	
	}
	else if global.freezeframe = false
	{	
		if draw_angle <= 0
			draw_angle += 360;
		// Rotate back to 360
		if draw_angle < 180
			draw_angle = max(draw_angle - 2.8125, 0);
		else
			draw_angle = min(draw_angle + 2.8125, 360);	
			
		if state == states.wallcling || state == states.climbwall
			draw_angle = 0;
	}
#endregion	

	//Speedboost
	if grounded && (state != states.mach2 && state != states.frozen && state != states.backbreaker && state != states.trick && state != states.mach3 && state != states.jetpack && state != states.machroll)
		maxmachspeed = approach(maxmachspeed,24,1)
		
	//Firetrail
	if firetrailbuffer > 0 && global.freezeframe = false
	firetrailbuffer -= movespeed/24 * 26
	if firetrailbuffer <= 0
	{
		if movespeed >= 12 && (state == states.mach2 || state == states.mach3 || state == states.jetpack || state == states.trick || state == states.machroll)
		{
			with (instance_create(x, y, obj_superdashcloud))
			{
				image_speed = 0.35
				
				image_xscale = other.xscale
				if place_meeting(other.x, (other.y + 1), obj_boilingwater) && !place_meeting(other.x, other.y, obj_boilingwater)
					sprite_index = spr_watersplashsmall
				else if place_meeting(other.x, (other.y + 1), obj_water) && !place_meeting(other.x, other.y, obj_water)
					sprite_index = spr_cheesesplashsmall	
				else 
					sprite_index = spr_flamecloud
			}
		}
		firetrailbuffer = 100;
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
	//Cutscene Variable
	if global.freezeframe = false && (state == 23 || sprite_index == spr_knightpepstart || sprite_index == spr_knightpepthunder || state == 56 || state == 78 || state == 4 || state == states.startgate || state == 64 || state == 61 || state == 55)
		cutscene = 1
	else if global.freezeframe = false
		cutscene = 0
	//Palette
	if surface_exists(surf_pallete) && (paletteselect >= sprite_get_width(spr_palette) - 1)
		custompalette = true
	else if (paletteselect < sprite_get_width(spr_palette) - 1)
		custompalette = false

	//Vigi Health nerf
	if vigihealth > 100 && vigitimer <= 0 && global.freezeframe = false
	{
		vigitimer = 100
		vigihealth = vigihealth - 5
	}
	else if vigihealth <= 100
		vigitimer = 100
	if global.freezeframe = false
	vigitimer--
	
	vigihealth = clamp(vigihealth,0,250)
	
	//Collision Mask
	if !scr_solid() && !scr_slope()
	{
		if (state != 72 && state != states.jetpackstart && state != 86 && sprite_index != spr_breakdanceattack1 && sprite_index != spr_bombpepintro && sprite_index != spr_knightpepthunder && state != 2 && state != 6 && state != 66 && state != 15 && state != 39 && sprite_index != spr_player_crouchshoot && state != 65 && state != 33 && state != 37 && state != 73 && state != 68 && state != 67)
			mask_index = spr_player_mask
		else
			mask_index = spr_crouchmask
	}
	else if scr_solid()
		mask_index = spr_crouchmask
	if (character == "S" && state == 27)
		mask_index = spr_player_mask
	else if (character == "S")
	    mask_index = spr_crouchmask
		
	//Supertaunt
	if global.freezeframe = false
	{
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
	}
	//Mach3DashBuffer
	if mach3dash = false
		mach3dashbuffer = 25
	else if mach3dash = true && mach3dashbuffer > 0
		mach3dashbuffer--

	if mach3dashbuffer <= 0
		mach3dash = false
	//Timesup
	if (state == 55 && y > (room_height * 1.5))
	{
		global.levelname = "none";
	    global.fakepeppino = 0;
	    script_execute(scr_playerreset);
		//var _backtohub = hub_room1;
		with obj_player
		{
			targetDoor = "start";
		}
	    room = obj_player1.backtohubroom
	}
	//Knight ground pond
	if state != states.knightpep && state != states.knightpepslopes && state != states.knightpepattack
	{
		knightpoundbuffer = 0;
	}
	//Tricks
	if (state == states.trick || tauntstoredstate == states.trick || frozenstate == states.trick)
	{
		show_tricks = true;
	}
	else
	{
		show_tricks = false;
		tricksperformed = 0;
	}

	if global.freezeframe = false {


	//Topping trail
	if (toomanytoppings > 0)
	    toomanytoppings -= 0.85
	if ((toomanytoppings <= 0) && ((state == 91) && (mach2 >= 100))) && global.panic == true
	{
	    with instance_create(x, (y + 17), obj_toppingtrail)
		{
			playerid = other.id
		}
	    toomanytoppings = 6
	}
	//Heat after image
	if !instance_exists(heatafterimage_id)
	{
		with instance_create(x,y,obj_heatafterimage)
		{
			other.heatafterimage_id = id;
			player = other.id
		}
	}
	//Firemouth Trail thingy
	if (firemouthtrail > 0)
	    firemouthtrail--
		
	if ((firemouthtrail <= 0) && state == states.firemouth && sprite_index != spr_firemouthend)
	{
	    with instance_create(x, y, obj_firemouthafterimg)
		{
			playerid = other.id
		}
	    firemouthtrail = 6
	}
	//Kungfu Trail thingy
	if (kungfutrail > 0)
	    kungfutrail--
		
	if ((kungfutrail <= 0) && state == states.tumble && sprite_index = spr_player_sjumpcancel)
	{
	    with instance_create(x, y, obj_firemouthafterimg)
		{
			playerid = other.id
			image_blend = make_color_rgb(48,168,248)
		}
	    kungfutrail = 5
	}
	//Transparent Effect
	if (machtrail2 > 0)
	    machtrail2--
		
	if ((machtrail2 <= 0) && (state == states.tumble && (sprite_index != spr_tumbleend && sprite_index != spr_player_sjumpcancel && sprite_index != spr_player_splat) || state = states.freefall || state = states.ratmount && (sprite_index == spr_gustavo_ball || sprite_index == spr_gustavo_dash)))
	{
	    with instance_create(x, y, obj_clearafterimg)
		{
			playerid = other.id
		}
	    machtrail2 = 4
	}
	//Mach 3 Effect
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

	//Instakill Move
	if global.freezeframe = false
	{
		if state != states.frozen && (state == 68 || sprite_index = spr_swingding || sprite_index = spr_player_shoryumineken || sprite_index = spr_playerN_spinjump || state == 86 || state == states.firemouth || state == states.breakdance ||	state == states.jetpack || state == states.pogo || state == 91 || state == 60 || (state == 73 && thrown == 1) || state == 70 || state == 17 || state == states.newbomb || state == 74 || state == 2 || state == 6 || state == 9 || state == 44 || state == 35 || state == 63 || state == 37 || state == 40 || state == 10 || (state == 43 && sprite_index == spr_piledriver) || state == 24 || state == 25 || state == 18 || state == 15 || state == 13 || state == 11 || state == states.slipbanana)
			instakillmove = 1
		else if state != states.frozen
			instakillmove = 0
		}
	}
	//Wow
	scr_collide_destructibles()
	if actor = false
	{
		if (state != 8 && state != 109 && state != 78 && state != 63 && state != 4 && state != 61 && state != 88 && state != 56 && state != 64 && state != 19 && state != 36 && state != 23 && state != 55)
		    scr_collide_player()
		if (state == 88)
		   scr_collide_player()
	}	
	//freefall and superjump update
	if state != states.freefall
		initialfreefallvsp = 15
	if state != states.Sjump
		initialsuperjumpvsp = -14
}

