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
