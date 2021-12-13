#region Roomnames
var i = 0;
while room_exists(i)
{
	if room != room_initializer //Skip the Initializer Room to prevent bugs
		global.roomlist[i] = room_get_name(i)
	i++
}	
#endregion		

///////////////

#region HUD STYLE
function sh_hud_style(args) 
{
	var arg1 = args[1]
	switch arg1
	{
		case "new": 
		arg1 = true 
		break;
		case "old": 
		arg1 = false 
		break;
		default: 
		arg1 = !global.newhud 
		break;
	}	
	global.newhud = arg1
	#region TV Detail
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
	#endregion
	ini_open("saveData.ini")
	ini_write_real("Option", "newhud", arg1);
	ini_close()
}
function meta_hud_style() 
{
	return {
		description: "switches HUD style",
		arguments: ["<style>"],
		suggestions: [
			["new","old"]
		],
		argumentDescriptions: [
			"the style of hud to choose"
		]
	}
}
#endregion	

#region GROUNDPOUND STYLE
function sh_groundpound_style(args) 
{
	var arg1 = args[1]
	switch arg1
	{
		case "new": 
		arg1 = true 
		break;
		case "old": 
		arg1 = false 
		break;
		default: 
		arg1 = !global.groundpoundstyle
		break;
	}	
	global.groundpoundstyle = arg1
	ini_open("saveData.ini")
	ini_write_real("Option", "groundpoundstyle", arg1);
	ini_close()
}
function meta_groundpound_style() 
{
	return {
		description: "switches Groundpound style",
		arguments: ["<style>"],
		suggestions: [
			["new","old"]
		],
		argumentDescriptions: [
			"the style of freefall to choose"
		]
	}
}
#endregion	

#region HEAT METER
function sh_heat_meter(args) 
{
	var arg1 = args[1]	
	switch arg1
	{
		case "true": 
		case "1":
		arg1 = true 
		break;
		case "false": 
		case "0":
		arg1 = false 
		break;
		default: 
		arg1 = !global.heatmeteroption 
		break;		
	}	
	global.heatmeteroption  = arg1 
	ini_open("saveData.ini")
		ini_write_real("Option", "heat", arg1);
	ini_close()	
}
function meta_heat_meter() 
{
	return {
		description: "toggles heat meter",
		arguments: ["<bool>"],
		suggestions: [
			["true","false"]
		],
		argumentDescriptions: [
			"toggles heat meter"
		]
	}
}
#endregion	

#region HITSTUN TIMER
function sh_hitstun_timer(args) 
{
	var arg1 = args[1]	
	global.defaulttime = real(string_digits(arg1))		
	ini_open("saveData.ini")
		ini_write_real("Option", "secrethitstuntimer", real(string_digits(arg1)))
	ini_close()
}
function meta_hitstun_timer() 
{
	return {
		description: "changes standard hitstun timer",
		arguments: ["<time>"],
		suggestions: [
			[]
		],
		argumentDescriptions: [
			"hitstun timer value (default: 70)"
		]
	}
}
#endregion	

#region Voice Frequency
function sh_voice_frequency(args) 
{
	var arg1 = args[1]	
	global.quipsfrequency = real(string_digits(arg1))
	ini_open("saveData.ini")
		ini_write_real("Option", "quips", real(string_digits(arg1)))
	ini_close()	
}
function meta_voice_frequency() 
{
	return {
		description: "changes frequency of quips and voice acting",
		arguments: ["<time>"],
		suggestions: [
			[]
		],
		argumentDescriptions: [
			"changes frequency of quips (default: 0)"
		]
	}
}

#endregion

#region Escape
function sh_escape(args) 
{
	var arg0 = string(args[1])
	var arg1 = args[2], arg2 = args[3]
	
	switch arg0
	{
		case "true": 
		case "1": 
		arg0 = true 
		break;
		case "false": 
		case "0": 
		arg0 = false 
		break;
		default: 
		arg0 = !global.panic
		break;
	}	
	global.panic = arg0 
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
	if !instance_exists(obj_panicchanger)
		instance_create(x, y, obj_panicchanger)
}
function meta_escape() 
{
	return {
		description: "activates escape and sets escape time",
		arguments: ["<bool>","<min>","<sec>"],
		suggestions: [
			["true","false"],
			[],
			[]
		],
		argumentDescriptions: [
			"activate/deactivate escape",
			"set minutes",
			"set seconds"
		]
	}
}

#endregion

#region Toggle Collisions
function sh_toggle_collisions(args) 
{
	var arg1 = args[1]	
	switch arg1
	{
		case "true": 
		case "1":
		arg1 = true 
		break;
		case "false": 
		case "0":
		arg1 = false 
		break;
		default: 
		arg1 = !global.showcollisions
		break;		
	}	
	global.showcollisions = arg1 
	toggle_collision_function()
}
function meta_toggle_collisions() 
{
	return {
		description: "toggles collision object visibility",
		arguments: ["<bool>"],
		suggestions: [
			["true","false"]
		],
		argumentDescriptions: [
			"toggles visibility"
		]
	}
}
function toggle_collision_function()
{
	if !variable_global_exists("showcollisionarray")
	{	
		var i = 0;
		global.showcollisionarray[i++] = obj_solid;
		global.showcollisionarray[i++] = obj_slope;
		global.showcollisionarray[i++] = obj_platform;
		global.showcollisionarray[i++] = obj_platformside;
		global.showcollisionarray[i++] = obj_movingplatformtrigger;
		global.showcollisionarray[i++] = obj_secretbigblock;
		global.showcollisionarray[i++] = obj_secretbigblock2;
		global.showcollisionarray[i++] = obj_secretonewaybigblock;
		global.showcollisionarray[i++] = obj_secretblock;
		global.showcollisionarray[i++] = obj_secretblock2;
		global.showcollisionarray[i++] = obj_secretmetalblock;
		global.showcollisionarray[i++] = obj_crashplaneblock;
		global.showcollisionarray[i++] = obj_pitcollider;
		global.showcollisionarray[i++] = obj_eventtrigger;
		global.showcollisionarray[i++] = obj_objectteleportal;
	}
	var array  = global.showcollisionarray
	var length = array_length(array)
	//Start from the end to the start (more optimized)

	for (var i = length - 1; i >= 0; --i)
	{
		with array[i]
		{
			if (object_index == array[i])
				visible = global.showcollisions
		}
	}
	layer_set_visible("Tiles_Solid",global.showcollisions);	
}
#endregion

#region Debug Mode
function sh_toggle_debugmode(args) 
{
	var arg1 = args[1]	
	switch arg1
	{
		case "true": 
		case "1":
		arg1 = true 
		break;
		case "false": 
		case "0":
		arg1 = false 
		break;
		default: 
		arg1 = !global.debugmode
		break;		
	}	
	global.debugmode = arg1 
}
function meta_toggle_debugmode() 
{
	return {
		description: "toggles debugmode",
		arguments: ["<bool>"],
		suggestions: [
			["true","false"]
		],
		argumentDescriptions: [
			"toggles debugmode"
		]
	}
}
#endregion

#region

#endregion


if DEBUG 
{
	#region Change Character
	function sh_change_character(args) 
	{
		var arg1 = string(args[1]), arg2 = args[2];
		switch arg1
		{
			case "player1": 
			case "1": 
			arg1 = obj_player1 
			break;
			case "player2": 
			case "2": 
			arg1 = obj_player2
			break;
		}	
		//Player
		with arg1
		{
			pogo = false;	
			//Character
			switch arg2
			{
				case "Peppino": character = "P"; break;
				case "S-Noise":	character = "N"; break;
				case "P-Noise":
				character = "N";
				pogo = true;				
				break;
				case "Snick": character = "S"; break;
				case "Vigi": character = "V"; break;				
				case "Pizzy": character = "PZ"; break;
				case "Dougie": character = "D"; break;
				case "Pepperman": character = "PM"; break;
			}		
			paletteselect = 0
			scr_characterspr()			
		}
	}
	function meta_change_character() 
	{
		return {
			description: "changes character of player",
			arguments: ["<player>","<character>"],
			suggestions: [
				["player1","player2"],
				["Peppino","S-Noise","P-Noise","Snick","Vigi","Pizzy","Dougie","Pepperman"]
			],
			argumentDescriptions: [
				"changes player to change character",
				"select the character to change into"
			]
		}
	}
	#endregion	

	#region Room Goto
	///commands[arrayi++] = "room_goto [roomname] [targetdoor]"
	function sh_room_goto(args) 
	{
		var arg1 = asset_get_index(args[1]), arg2 = args[2]	
		//Error Check 
		if asset_get_type(args[1]) != asset_room { return "Can't find room " + string(args[1]); } //Shamelessy took this from Ethgaming
		//Go to Room
		if asset_get_type(args[1]) = asset_room
		{
			obj_player1.targetRoom = arg1
			obj_player2.targetRoom = arg1
			obj_player1.targetDoor = arg2
			obj_player2.targetDoor = arg2
			instance_create(0, 0, obj_fadeout) 			
		}
	}
	function meta_room_goto() 
	{	
		return {
			description: "allows you to go to another room",
			arguments: ["<room>","<door>"],
			suggestions: [
				global.roomlist,
				["N/A","A","B","C","D","E","F","G","start"]
			],
			argumentDescriptions: [
				"sets targetRoom",
				"sets targetDoor"
			]
		}
	}	


	#endregion		
	
	#region Instance_Create
	///commands[arrayi++] = "instance_create [object] [x] [y]"
	function sh_instance_create(args) 
	{
		instance_create(args[1],args[2],asset_get_index(args[3]))
	}
	function meta_instance_create() 
	{
		return {
			description: "create an object",
			arguments: ["<x>", "<y>","<object>"],
			suggestions: [
				[],
				[],
				[]
			],
			argumentDescriptions: [
				"the X coordinate to create the object at",
				"the Y coordinate to create the object at",
				"the object to create"
			]
		}
	}

	#endregion		
}