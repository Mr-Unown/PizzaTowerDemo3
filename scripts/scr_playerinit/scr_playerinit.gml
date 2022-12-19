

function scr_enums() {
	
	enum states {
		normal = 0,
		titlescreen = 1,
		Nhookshot = 2,
		slap = 5,
		charge = 88,
		cheesepep = 6,
		cheeseball = 4,
		cheesepepstick = 7,
		boxxedpep = 8,
		pistolaim = 9,
		climbwall = 10,
		knightpepslopes = 11,
		portal = 12,
		secondjump = 13,
		chainsawbump = 14,
		handstandjump = 15,
		gottreasure = 16,
		knightpep = 17,
		knightpepattack = 18,
		meteorpep = 19,
		bombpep = 20,
		grabbing = 21,
		chainsawpogo = 22,
		shotgunjump = 23,
		stunned = 24,
		highjump = 25,
		chainsaw = 26,
		facestomp = 27,
		timesup = 29,
		machroll = 30,
		pistol = 32,
		shotgun = 31,
		machfreefall = 33,
		Throw = 34,
		superslam = 36,
		slam = 35,
		skateboard = 37,
		grind = 38,
		grab = 39,
		punch = 40,
		backkick = 41,
		uppunch = 42,
		shoulder = 43,
		backbreaker = 44,
		bossdefeat = 45,
		bossintro = 47,
		smirk = 55,
		pizzathrow = 46,
		gameover = 48,
		Sjumpland = 85,
		freefallprep = 84,
		runonball = 82,
		boulder = 81,
		keyget = 49,
		tackle = 50,
		slipnslide = 53,
		ladder = 52,
		jump = 51,
		victory = 57,
		comingoutdoor = 54,
		Sjump = 56,
		Sjumpprep = 58,
		crouch = 59,
		crouchjump = 60,
		crouchslide = 61,
		mach1 = 62,
		mach2 = 63,
		mach3 = 83,
		machslide = 64,
		bump = 65,
		hurt = 66,
		freefall = 67,
		freefallland = 70,
		hang = 68,
		door = 71,
		barrelnormal = 77,
		barrelfall = 76,
		barrelmach1 = 75,
		barrelmach2 = 74,
		barrelfloat = 73,
		barrelcrouch = 72,
		barrelslipnslide = 78,
		barrelroll = 79,
		current = 80,
		finishingblow = 90,
		cotton = 100,
		uppercut = 101,
		pal = 102,
		shocked = 103,
		bushdisguise = 104,
		parry = 105,
		talkto = 107,
		puddle = 108,
		tumble = 109,
		cottondrill = 110,
		cottonroll = 111,
		breakdance = 114,
		handstand = 999
	}
	
	enum baddiestate {
		idle = 86,
		charge = 88,
		turn = 90,
		walk = 94,
		land = 96,
		hit = 97,
		stun = 98,
		Throw = 89,
		grabbed = 101
	}
	
	enum miscstate {
		
	}

}

function scr_playerstate() {

    switch state
    {
        case 0:
            scr_player_normal()
            break
        case 1:
            scr_player_titlescreen()
            break
        case 2:
            scr_playerN_hookshot()
            break
        case 5:
            scr_player_slap()
            break
        case 88:
            scr_player_charge()
            break
        case 6:
            scr_player_cheesepep()
            break
        case 4:
            scr_player_cheeseball()
            break
        case 7:
            scr_player_cheesepepstick()
            break
        case 8:
            scr_player_boxxedpep()
            break
        case 9:
            scr_player_pistolaim()
            break
        case 10:
            scr_player_climbwall()
            break
        case 11:
            scr_player_knightpepslopes()
            break
        case 12:
            scr_player_portal()
            break
        case 13:
            scr_player_secondjump()
            break
        case 14:
            scr_player_chainsawbump()
            break
        case 15:
            scr_player_handstandjump()
            break
        case 16:
            scr_player_gottreasure()
            break
        case 17:
            scr_player_knightpep()
            break
        case 18:
            scr_player_knightpepattack()
            break
        case 19:
            scr_player_meteorpep()
            break
        case 20:
            scr_player_bombpep()
            break
        case 21:
            scr_player_grabbing()
            break
        case 22:
            scr_player_chainsawpogo()
            break
        case 23:
            scr_player_shotgunjump()
            break
        case 24:
            scr_player_stunned()
            break
        case 25:
            scr_player_highjump()
            break
        case 26:
            scr_player_chainsaw()
            break
        case 27:
            scr_player_facestomp()
            break
        case 29:
            scr_player_timesup()
            break
        case 30:
            scr_player_machroll()
            break
        case 32:
            scr_player_pistol()
            break
        case 31:
            scr_player_shotgun()
            break
        case 33:
            scr_player_machfreefall()
            break
        case 34:
            scr_player_throw()
            break
        case 36:
            scr_player_superslam()
            break
        case 35:
            scr_player_slam()
            break
        case 37:
            scr_player_skateboard()
            break
        case 38:
            scr_player_grind()
            break
        case 39:
            scr_player_grab()
            break
        case 40:
            scr_player_punch()
            break
        case 41:
            scr_player_backkick()
            break
        case 42:
            scr_player_uppunch()
            break
        case 43:
            scr_player_shoulder()
            break
        case 44:
            scr_player_backbreaker()
            break
        case 45:
            scr_player_bossdefeat()
            break
        case 47:
            scr_player_bossintro()
            break
        case 55:
            scr_player_smirk()
            break
        case 46:
            scr_player_pizzathrow()
            break
        case 48:
            scr_player_gameover()
            break
        case 85:
            scr_player_Sjumpland()
            break
        case 84:
            scr_player_freefallprep()
            break
        case 82:
            scr_player_runonball()
            break
        case 81:
            scr_player_boulder()
            break
        case 49:
            scr_player_keyget()
            break
        case 50:
            scr_player_tackle()
            break
        case 53:
            scr_player_slipnslide()
            break
        case 52:
            scr_player_ladder()
            break
        case 51:
            scr_player_jump()
            break
        case 57:
            scr_player_victory()
            break
        case 54:
            scr_player_comingoutdoor()
            break
        case 56:
            scr_player_Sjump()
            break
        case 58:
            scr_player_Sjumpprep()
            break
        case 59:
            scr_player_crouch()
            break
        case 60:
            scr_player_crouchjump()
            break
        case 61:
            scr_player_crouchslide()
            break
        case 62:
            scr_player_mach1()
            break
        case 63:
            scr_player_mach2()
            break
        case 83:
            scr_player_mach3()
            break
        case 64:
            scr_player_machslide()
            break
        case 65:
            scr_player_bump()
            break
        case 66:
            scr_player_hurt()
            break
        case 67:
            scr_player_freefall()
            break
        case 70:
            scr_player_freefallland()
            break
        case 68:
            scr_player_hang()
            break
        case 71:
            scr_player_door()
            break
        case 77:
            scr_player_barrelnormal()
            break
        case 76:
            scr_player_barrelfall()
            break
        case 75:
            scr_player_barrelmach1()
            break
        case 74:
            scr_player_barrelmach2()
            break
        case 73:
            scr_player_barrelfloat()
            break
        case 72:
            scr_player_barrelcrouch()
            break
        case 78:
            scr_player_barrelslipnslide()
            break
        case 79:
            scr_player_barrelroll()
            break
        case 80:
            scr_player_current()
            break
		case 90:
			scr_player_finishingblow()
			break
		case 100:
			scr_player_cotton()
			break
		case 101:
			scr_player_uppercut()
			break
		case 102:
			scr_player_pal()
			break
		case 103:
			scr_player_shocked()
			break
		case 104:
			scr_player_bushdisguise()
			break
		case 105:
			scr_player_parry()
			break
		//case 105:
			//scr_player_tumble()
			//break
		case 107:
			scr_player_talkto()
			break
		case 108:
			scr_player_puddle()
			break
		case 109:
			scr_player_tumble()
			break
		case 110:
			scr_player_cottondrill()
		break
		case 111:
			scr_player_cottonroll()
		break
		case 114:
			scr_player_breakdance()
		break
		case 999:
			scr_player_handstand()
		break
    }
}