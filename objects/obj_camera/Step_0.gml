//Variables
var _cam_x = camera_get_view_x(view_camera[0])
var _cam_y = camera_get_view_y(view_camera[0])
zoom = 0
var _drawx = 125 + _cam_x
var _drawy = 100 + _cam_y
//Maxangle

maxangle = clamp(floor(arctan((room_height/room_width)/_cam_y)), 0, 3)
/*var cam_width = camera_get_view_width(view_camera[0]) , cam_height = camera_get_view_height(view_camera[0]) 
, camsqr = sqr(cam_width) + sqr(cam_height) ,
camsqrt = sqrt(camsqr), camarctan = arctan(cam_height/cam_width),
maximumangle =  arccos( (room_width / camsqrt) - camarctan       )

maxangle = clamp(maximumangle,0,3)*/

//Pizzascore sprites
var player = (obj_player1.spotlight = false ? obj_player2 : obj_player1)
spr_pizzascore_1 = player.spr_pizzascore_1
spr_pizzascore_2 = player.spr_pizzascore_2
spr_pizzascore_3 = player.spr_pizzascore_3
spr_pizzascore_4 = player.spr_pizzascore_4
spr_pizzasprite = player.spr_pizzasprite
spr_pizzascorepal = player.spr_pizzascorepal
spr_heatpalette = player.spr_heatpalette
spr_heatmeterfill = player.spr_heatmeterfill
#region Rank Checker
if global.timeattack = false
{
	if global.collect < global.crank
		global.currentrank = "D"
	else if global.collect < global.brank
		global.currentrank = "C"
	else if global.collect < global.arank
		global.currentrank = "B"
	else if global.collect < global.srank
		global.currentrank = "A"
	else if global.collect >= global.srank
		global.currentrank = "S"
}
else
{
	if global.timeattack_value <= global.stimerank
		global.currentrank = "S"	
	else if global.timeattack_value <= global.atimerank
		global.currentrank = "A"		
	else if global.timeattack_value <= global.btimerank
		global.currentrank = "B"		
	else if global.timeattack_value <= global.ctimerank
		global.currentrank = "C"
	else if global.timeattack_value <= global.dtimerank
		global.currentrank = "D"
}
#endregion
if oldranklol != global.currentrank
{
	bubblescale = 1.5;
	oldranklol = global.currentrank;
}
bubblescale = approach(bubblescale, 0, 0.10);
//Collided with Player
if point_in_rectangle(obj_player.x,obj_player.y, _drawx - 80, _drawy - 85,_drawx + 80,_drawy + 85)
	collided = true
else if global.newhud = true && point_in_rectangle(obj_player.x,obj_player.y, _drawx - 100, _drawy - 1000,_drawx + 80,_drawy + 85)
	collided = true
else
	collided = false
//Alpha
if global.newhud = false
{
	newhudyoffset = 0
	if collided = true
		alpha = 0.5
	else
		alpha = 1
}
else
{
	alpha = 1
	if collided = true
		newhudyoffset = approach(newhudyoffset,-600,16)
	else
		newhudyoffset = approach(newhudyoffset,0,16)
}
shakemag = approach(shakemag,0, 20 / room_speed)
//Greyscale
if (global.panic = 1 || global.snickchallenge = true) && global.seconds <= 0 && global.minutes <= 0
greyscalefade = approach(greyscalefade,0.45,0.005)
else
greyscalefade = approach(greyscalefade,0,0.005)
//Panic Bg Update
if global.panicbg = true && (global.panic = 1 || global.snickchallenge = true)
{
	global.wave = clamp(clamp(global.wave + (60/room_speed),0,(global.maxwave - (((global.minutes * 60) + global.seconds) * 60))),0,global.maxwave)
}	

if (room == strongcold_endscreen || room == rank_room || room == timesuproom || room == global.roomstart[global.newtitlescreen] || room == Scootertransition || room == characterselect)
    visible = false
else
    visible = true
if (obj_player1.spotlight == 1)
{
    player = obj_player1
    player2 = obj_player2
}
else if (obj_player1.spotlight == 0)
{
    player = obj_player2
    player2 = obj_player1
}
x = player.x
y = player.y
if (global.coop == 1)
{
    if (player2.state != 109)
    {
        if (obj_player1.spotlight == 1)
        {
            p2pdistanced = point_distance(obj_player1.y, 0, obj_player2.y, 0)
            p2pdistance = point_distance(obj_player1.x, 0, obj_player2.x, 0)
            if (obj_player1.x >= obj_player2.x)
                p2pdistancex = ((-p2pdistance) / 2)
            else
                p2pdistancex = (p2pdistance / 2)
            if (obj_player1.y >= obj_player2.y)
                p2pdistancey = ((-p2pdistanced) / 8)
            else
                p2pdistancey = (p2pdistanced / 8)
        }
        else
        {
            p2pdistanced = point_distance(obj_player2.y, 0, obj_player1.y, 0)
            p2pdistance = point_distance(obj_player2.x, 0, obj_player1.x, 0)
            if (obj_player2.x >= obj_player1.x)
                p2pdistancex = ((-p2pdistance) / 2)
            else
                p2pdistancex = (p2pdistance / 2)
            if (obj_player2.y >= obj_player1.y)
                p2pdistancey = ((-p2pdistanced) / 8)
            else
                p2pdistancey = (p2pdistanced / 8)
        }
    }
    else if (player2.state == 109)
    {
        p2pdistancex = 0
        p2pdistance = 0
    }
}
else
    p2pdistancex = 0
if (floor(image_index) == 10)
    shoving = 0
if (global.combo >= 10)
{
    global.SAGEcombo10 = 1
    ini_open("saveData.ini")
    ini_write_string("SAGE2019", "combo10", 1)
    ini_close()
}
if (shoving == 1 && image_index >= 3 && bang == 0)
{
    with (instance_create(x, y, obj_fallingHUDface))
    {
        if (obj_player1.spotlight == 1)
        {
            if (other.player2.character == "P")
                sprite = spr_pepinoHUDscream
            else if (other.player2.character == "N")
                sprite = spr_noiseHUD_panic
            else if (other.player2.character == "S")
                sprite = spr_snickHUD_normal
            else if (other.player2.character == "V")
                sprite = spr_playerV_hurtHUD
            hsp = random_range(-1, -5)
        }
        else
        {
            if (other.player2.character == "P")
                sprite = spr_pepinoHUDscream
            else if (other.player2.character == "N")
                sprite = spr_noiseHUD_panic
            else if (other.player2.character == "S")
                sprite = spr_snickHUD_normal
            else if (other.player2.character == "V")
                sprite = spr_playerV_hurtHUD
            hsp = random_range(1, 5)
        }
    }
    bang = 1
}
if (shoving == 0)
    bang = 0
if (room == timesuproom)
    timestop = 1
if (global.seconds <= 0 && global.minutes <= 0 && ded == 0)
{
    alarm[1] = -1
    alarm[2] = 3
    ded = 1
	if global.panic = true && global.snickchallenge = false && global.miniboss = false && !instance_exists(obj_pizzaface)
	{
		instance_create(500,-500,obj_pizzaface)
	}	
}
if (global.seconds < 0)
{
    global.seconds = 59
    global.minutes = (global.minutes - 1)
}
if (global.seconds > 59)
{
    global.minutes = (global.minutes + 1)
    global.seconds = (global.seconds - 59)
}
if (global.panic == 1)
{
    panicshake = clamp(lerp(1, 2.15,(global.wave / global.maxwave)),1,2.15)
    panicshakeacc = (3 / room_speed)
}
else
{
	panicshake = 0;
	panicshakeacc = 0;
}
panicshake = approach(panicshake,0,panicshakeacc)
shake_mag = approach(shake_mag,0,shake_mag_acc)
if (instance_exists(player) && player.state != 36 && player.state != 55)
    target = player
//Special Cam Stuff
//GATE THING
var _player = obj_player1
if global.coop = true
_player = (obj_player1.spotlight = false ? obj_player2 : obj_player1)
with instance_nearest(_player.x,_player.y,obj_startgate)
{
	if (distance_to_object(_player) < 100)
		global.startgate = id
	else
		global.startgate = noone
}
//global.startgate
if global.startgate != noone && instance_exists(global.startgate)
{
	var factor = 5;
	startdistanced = point_distance(0, target.y, 0, global.startgate.y - 125)
    startdistance = point_distance(target.x, 0, global.startgate.x, 0)
	var _startgateoffsety,_startgateoffsetx;
    if (target.x >= global.startgate.x)
		_startgateoffsetx = ((-startdistance) / factor)
    else
        _startgateoffsetx = (startdistance / factor)
    if (target.y >= global.startgate.y - 125)
        _startgateoffsety = ((-startdistanced) / factor)
    else
        _startgateoffsety = (startdistanced / factor)	
		
	startgateoffsetx = approach(startgateoffsetx,_startgateoffsetx,1);
	startgateoffsety = approach(startgateoffsety,_startgateoffsety,1);
}
else
{
	startgateoffsetx = approach(startgateoffsetx,0,1)
	startgateoffsety = approach(startgateoffsety,0,1)
}
//GOLF
if (golf == 1 && instance_exists(obj_pizzaball)) 
{
	var factor = 1.5;
	golfdistanced = point_distance(0, target.y, 0, obj_pizzaball.y)
    golfdistance = point_distance(target.x, 0, obj_pizzaball.x, 0)
	if point_distance(target.x,target.y,obj_pizzaball.x,obj_pizzaball.y) > 420 {
	if factor > 1
		factor -= 0.1
	else
		factor = 1
	}
	else if factor < 1.5
		factor += 0.1
	else
		factor = 1.5
	
    if (target.x >= obj_pizzaball.x)
		golfdistancex = ((-golfdistance) / factor)
    else
        golfdistancex = (golfdistance / factor)
    if (target.y >= obj_pizzaball.y)
        golfdistancey = ((-golfdistanced) / factor)
    else
        golfdistancey = (golfdistanced / factor)
}
else
{
	if golfdistancex != 0 
		golfdistancex  -= min(abs(golfdistancex), 9) * sign(golfdistancex);
	if golfdistancey != 0 
		golfdistancey  -= min(abs(golfdistancey), 9) * sign(golfdistancey);
}
target_x +=  target.x - target_xold
target_y +=  target.y - target_yold
#region Camera
//Zooming and Angles
if global.freezeframe = false
{
	targetzoom1 = approach(targetzoom1,960,16)
	targetzoom2 = approach(targetzoom2,540,9)	
	angle = approach(angle,0,0.25)
	/*
if targetzoom1 < 960 && global.freezeframe = false
	targetzoom1 += 16
else if global.freezeframe = false
	targetzoom1 = 960
if targetzoom2 < 540 && global.freezeframe = false
	targetzoom2 += 9*/

}
//Zoom and Angles 2	
camera_set_view_angle(view_camera[0], angle)		
camera_set_view_size(view_camera[0],targetzoom1,targetzoom2)
//Charge Camera
if target = player
{
	if (player.state == 91 || player.state == states.jetpack || player.state == 37 || player.state == states.firemouth && sprite_index = spr_player_firemouthdash || player.state == states.tumble && player.movespeed > 9 || player.state == states.knightpepslopes)
	{
            var _targetcharge = (player.xscale * ((player.movespeed / 6) * 50)) //D3G: might need some tweaking
            var _tspeed = 2
            if ((_targetcharge > 0 && chargecamera < 0) || (_targetcharge < 0 && chargecamera > 0))
                _tspeed = 8
            if (chargecamera > _targetcharge)
                chargecamera -= _tspeed
            if (chargecamera < _targetcharge)
                chargecamera += _tspeed
    }
	else
	{
	    if (chargecamera > 0)
			chargecamera -= 2
		if (chargecamera < 0)
			chargecamera += 2
	}
	
}
//TODO: Clean Up
//Camera X
camera_set_view_pos(view_camera[0],target_x - (targetzoom1 / 2) + (chargecamera + startgateoffsetx + golfdistancex + p2pdistancex) + (random_range(-panicshake, panicshake))  + (irandom_range(-shake_mag, shake_mag)), camera_get_view_y(view_camera[0]))			
camera_set_view_pos(view_camera[0],clamp(camera_get_view_x(view_camera[0]), 0 + (random_range(-panicshake, panicshake)) + (irandom_range(-shake_mag, shake_mag)), (room_width - targetzoom1) + (random_range(-panicshake, panicshake)) + (irandom_range(-shake_mag, shake_mag))),camera_get_view_y(view_camera[0]))
//Camera Y	
camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]), ((target_y - (targetzoom2 / 2)) + startgateoffsety + golfdistancey + p2pdistancey ) + (random_range(-panicshake, panicshake)) + irandom_range(-shake_mag, shake_mag))		
camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),clamp(camera_get_view_y(view_camera[0]), 0 + irandom_range(-shake_mag, shake_mag), (room_height - targetzoom2) + (random_range(-panicshake, panicshake)) + irandom_range(-shake_mag, shake_mag)))
#endregion
target_xold = target_x
target_yold = target_y

global.hitstunalarm = approach(global.hitstunalarm,-1,1)
//New Hitstun
if (global.hitstunalarm <= -1)
{
	global.freezeframe = false;
	
}
//Alarms
if frozen = true && global.freezeframe = false
{
	for (var i = 0; i < 3; i++)
	{
		alarm_set(i, frozenalarm[i]);
	}	
	frozen = false;
}
//Speedrun Timer
if room != hub_room1 && room != hub_room2 && room != hub_room3 && room != cowboytask && room != timesuproom && room != Scootertransition && room != Tutorialtrap  && room != Titlescreen  && room != global.roomstart[global.newtitlescreen]
{
	if obj_player.state != states.gottreasure  && room != rank_room && !instance_exists(obj_endlevelfade) && !instance_exists(obj_gatetransition)
	{
		global.bonusmiliseconds += 1
		if global.bonusmiliseconds >= 60
		{
			global.bonusmiliseconds = 0
			global.bonusseconds += 1
			if (global.bonusseconds >= 60)
			{
				global.bonusseconds = 0
				global.bonusminutes += 1
				if global.bonusminutes >= 60
				{
					global.bonusminutes = 0
					global.bonushour += 1
				}
			}
		}
	}
}
else
{
	global.bonusmiliseconds = 0;
	global.bonusseconds = 0;
	global.bonusminutes = 0;
}