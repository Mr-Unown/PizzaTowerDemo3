///@description command function

if active = true
{
	if (keyboard_check_pressed(vk_return) && input != "")
    {
		var _commands = string_split(input, " ")
		
		var _cmd = ds_list_find_value(_commands, 0)
		
		switch _cmd
		{
			case "room_goto":
				if DEBUG {
				var arg1 if ds_list_find_value(_commands, 1) == undefined arg1 = 0 else arg1 = ds_list_find_value(_commands, 1)
				var arg2 if ds_list_find_value(_commands, 2) == undefined arg2 = 0 else arg2 = ds_list_find_value(_commands, 2)
				if asset_get_type(arg1) = asset_room
				{
					obj_player1.targetRoom = asset_get_index(arg1)
					obj_player2.targetRoom = asset_get_index(arg1)
				}
				obj_player1.targetDoor = arg2
				obj_player2.targetDoor = arg2
				instance_create(0, 0, obj_fadeout) } break
			case "fart":
			case "poop":
			case "crap":
			case "fard":
			case "shart":
			case "shit":
			audio_sound_gain(audio_play_sound(sfx_fart, 1, false), (1 * global.soundeffectsvolume), 0)
			break;
			
			
			case "help":
			var arg1 if ds_list_find_value(_commands, 1) == undefined arg1 = 0 else arg1 = ds_list_find_value(_commands, 1)
			var page = clamp(real(string_digits(arg1)),1,pagenumber)
			var first = pagelength * (page - 1)
			var last = clamp(pagelength * page,1,array_length_1d(commands))
			commandhistory = "COMMAND LIST (PAGE " + string(page) + " OF " + string(pagenumber) +")#"
			for(var i = first; i < last; i++)
			{
				commandhistory += (string(commands[i]) + "#")
			}
			break;			
			
			case "escape":
				var arg1 if ds_list_find_value(_commands, 1) == undefined arg1 = 0 else arg1 = ds_list_find_value(_commands, 1)
				var arg2 if ds_list_find_value(_commands, 2) == undefined arg2 = 10 else arg2 = ds_list_find_value(_commands, 2)
				global.panic = !global.panic
				global.minutes = real(string_digits(arg1))
				global.seconds = real(string_digits(arg2))
				if instance_exists(obj_minipillar)
					with (obj_minipillar)
						fadetopanic = 1
				if instance_exists(obj_reverseminipillar)
					with (obj_reverseminipillar)
						fadetopanic = 1
				global.wave = 0
				global.maxwave = (((global.minutes * 60) + global.seconds) * 60)
				if global.panicbg = true
					scr_panicbg_init()			
				obj_camera.alarm[1] = 60
				
				break
			case "standardhitstun":
				var arg1 if ds_list_find_value(_commands, 1) == undefined arg1 = 70 else arg1 = ds_list_find_value(_commands, 1)
				global.defaulttime = real(string_digits(arg1))		
				ini_open("saveData.ini")
				ini_write_real("Option", "secrethitstuntimer", real(string_digits(arg1)))
				ini_close()
				break;		
			case "voicefrequency":
				var arg1 if ds_list_find_value(_commands, 1) == undefined arg1 = 0 else arg1 = ds_list_find_value(_commands, 1)
				global.quipsfrequency = real(string_digits(arg1))
				ini_open("saveData.ini")
				ini_write_real("Option", "quips", real(string_digits(arg1)))
				ini_close()
				break;						
			case "togglecollision": //Could probably use simplification
				var arg1 if ds_list_find_value(_commands, 1) == undefined arg1 = !showcollisions else arg1 = ds_list_find_value(_commands, 1)
				
				switch arg1
				{
					case "true": arg1 = true
					case "false": arg1 = false
					default: arg1 = !showcollisions
				}
				
				showcollisions = arg1 
				event_user(0);
				break
			case "newhud": //MAMA
				var arg1 if ds_list_find_value(_commands, 1) == undefined arg1 = !global.newhud else arg1 = ds_list_find_value(_commands, 1)	
				switch arg1
				{
					case "true": arg1 = true
					case "false": arg1 = false
					default: arg1 = !global.newhud
				}
				global.newhud = arg1
				with obj_tv
				{
					alarm[0] = -1
					imageindexstore = 0
					image_index = 0
					image_speed = 0
					tvsprite = spr_tvboot;
					newtvsprite = spr_tv_open;
					sprite_index = spr_tvboot
					bootingup = false
				}
				ini_open("saveData.ini")
				ini_write_real("Option", "newhud", arg1);
				ini_close()
				break;
			case "newtitlescreen": //MAMA
				var arg1 if ds_list_find_value(_commands, 1) == undefined arg1 = !global.newhud else arg1 = ds_list_find_value(_commands, 1)	
				switch arg1
				{
					case "true": arg1 = true
					case "false": arg1 = false
					default: arg1 = !global.newtitlescreen
				}
				global.newtitlescreen = arg1
				ini_open("saveData.ini")
				ini_write_real("Option", "newtitlescreen", arg1);
				ini_close()
				
				break;				
			case "debugmode": //Could probably use optimization
				var arg1 if ds_list_find_value(_commands, 1) == undefined arg1 = !global.debugmode else arg1 = ds_list_find_value(_commands, 1)
				//if arg1 = "true"
				//	arg1 = 1
				//else if arg1 = "false"
				//	arg1 = 0
				//else if real(arg1) != 1 && real(arg1) != 0
				//	arg1 = !global.debugmode	
				switch arg1
				{
					case "true": arg1 = true
					case "false": arg1 = false
					default: arg1 = !global.debugmode
				}
				global.debugmode = arg1 
				break		
			case "heatmeter": 
				var arg1 if ds_list_find_value(_commands, 1) == undefined arg1 = !global.heatmeteroption  else arg1 = ds_list_find_value(_commands, 1)
				switch arg1
				{
					case "true": arg1 = true
					case "false": arg1 = false
					default: arg1 = !global.heatmeteroption 
				}
				global.heatmeteroption  = arg1 
				ini_open("saveData.ini")
				ini_write_real("Option", "heat", arg1);
				ini_close()	
				break						
			case "changecharacter":
				if DEBUG {
				var arg1 if ds_list_find_value(_commands, 1) == undefined arg1 = 1 else arg1 = ds_list_find_value(_commands, 1)
				var arg2 if ds_list_find_value(_commands, 2) == undefined arg2 = "P" else arg2 = ds_list_find_value(_commands, 2)
				var arg3 if ds_list_find_value(_commands, 3) == undefined arg3 = undefined else arg3 = ds_list_find_value(_commands, 3)				
				var player = obj_player1
				if arg1 = 2
				player = obj_player2
				else if arg1 = 1
				player = obj_player1
				//Pogo
				if arg3 = "true"
					arg3 = 1
				else if arg3 = "false"
					arg3 = 0		
				with player
				{
				character = arg2
				if is_undefined(arg3) && arg2 = "N"
				pogo = !pogo
				else
				pogo = arg3
				paletteselect = 0
				scr_characterspr()
				}
				}
				break
				
			default:
				show_debug_message("FAIL TBH!")
		}
		//active = false
		input = ""
		keyboard_string = ""		
    }
}

