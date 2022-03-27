if (live_call()) return live_result;
//Variables
var _cam_x = camera_get_view_x(view_camera[0])
var _cam_y = camera_get_view_y(view_camera[0])
var _drawx = 125 + _cam_x
var _drawy = 100 + _cam_y
//Focused Player
player = focused_player();
player2 = focused_player(true);

zoom = 0

maxangle = clamp(floor(arctan((room_height/room_width)/_cam_y)), 0, 3);

//Pizzascore sprites
var _player = focused_player();
spr_pizzascore_1 = _player.spr_pizzascore_1
spr_pizzascore_2 = _player.spr_pizzascore_2
spr_pizzascore_3 = _player.spr_pizzascore_3
spr_pizzascore_4 = _player.spr_pizzascore_4
spr_pizzasprite = _player.spr_pizzasprite
spr_pizzascorepal = _player.spr_pizzascorepal
spr_heatpalette = _player.spr_heatpalette
spr_heatmeterfill = _player.spr_heatmeterfill
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

if (floor(image_index) >= 10)
    shoving = 0
/*
if (global.combo >= 10)
{
    global.SAGEcombo10 = 1
    ini_open("saveData.ini")
    ini_write_string("SAGE2019", "combo10", 1)
    ini_close()
}
*/
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

#region Camera
//Camera Zoom and Angles
if global.freezeframe = false
{
	targetzoom1 = approach(targetzoom1,960,16)
	targetzoom2 = approach(targetzoom2,540,9)	
	angle = approach(angle,0,0.25)
}
camera_set_view_angle(view_camera[0], angle);
camera_set_view_size(view_camera[0], targetzoom1, targetzoom2);

//Setup Variables
var target = player;
var _cam_x = target.x - camera_get_view_width(view_camera[0]) / 2;
var _cam_y = target.y - camera_get_view_height(view_camera[0]) / 2;
var _shake_x = 0;
var _shake_y = 0;
var _panic_shake_x = 0;
var _panic_shake_y = 0;

//Teleport to Player
x = player.x;
y = player.y;



//Set target to Player
if (instance_exists(player) && player.state != states.timesup && player.state != states.gameover) {
    target = player;
}
#region COOP CAMERA
if (global.coop == true) && (player2.state != states.grabbed)
{
	p2pdistance = point_distance(player.x, 0, player2.x, 0);
	p2pdistanced = point_distance(player.y, 0, player2.y, 0);	

	if (player.x >= player2.x)
		p2pdistancex = ((-p2pdistance) / 2);
	else
		p2pdistancex = (p2pdistance / 2);
	if (player.y >= player2.y)
		p2pdistancey = ((-p2pdistanced) / 8);
	else
		p2pdistancey = (p2pdistanced / 8);	
} else {
	p2pdistancex = 0;
    p2pdistancey = 0;
    p2pdistance = 0;
    p2pdistanced = 0;
}
_cam_x += p2pdistancex;
_cam_y += p2pdistancey;
#endregion

#region STARTGATE CAMERA

//Find Nearest Startgate
with instance_nearest(player.x, player.y ,obj_startgate)
{
	if (distance_to_object(player) < 100) {
		global.startgate = id;
	}
	else {
		global.startgate = noone;
	}
}
//If found do some math
if instance_exists(global.startgate)
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
_cam_x += startgateoffsetx;
_cam_y += startgateoffsety;
#endregion

#region GOLF CAMERA and Old Code
/*
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
*/
/*
//TODO: Clean Up
//Camera X
camera_set_view_pos(view_camera[0],target_x - (targetzoom1 / 2) + (chargecamera + startgateoffsetx + golfdistancex + p2pdistancex) + (random_range(-panicshake, panicshake))  + (irandom_range(-shake_mag, shake_mag)), camera_get_view_y(view_camera[0]))			
camera_set_view_pos(view_camera[0],clamp(camera_get_view_x(view_camera[0]), 0 + (random_range(-panicshake, panicshake)) + (irandom_range(-shake_mag, shake_mag)), (room_width - targetzoom1) + (random_range(-panicshake, panicshake)) + (irandom_range(-shake_mag, shake_mag))),camera_get_view_y(view_camera[0]))
//Camera Y	
camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]), ((target_y - (targetzoom2 / 2)) + startgateoffsety + golfdistancey + p2pdistancey ) + (random_range(-panicshake, panicshake)) + irandom_range(-shake_mag, shake_mag))		
camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),clamp(camera_get_view_y(view_camera[0]), 0 + irandom_range(-shake_mag, shake_mag), (room_height - targetzoom2) + (random_range(-panicshake, panicshake)) + irandom_range(-shake_mag, shake_mag)))
*/

#endregion

#region Charge Camera
if target = player && (player.state == states.mach3 || player.state == states.jetpack || player.state == states.machroll || (player.state == states.firemouth && sprite_index = spr_player_firemouthdash) || player.state == states.tumble && player.movespeed > 9 || player.state == states.knightpepslopes) {
	var _targetcharge = (player.xscale * ((player.movespeed / 6) * 80)); //D3G: might need some tweaking
    var _tspeed = player.movespeed / 6;
    if ((_targetcharge > 0 && chargecamera < 0) || (_targetcharge < 0 && chargecamera > 0))
		_tspeed = 8;
    if (chargecamera > _targetcharge)
		chargecamera -= _tspeed;
    if (chargecamera < _targetcharge)
		chargecamera += _tspeed;
} else {
	if (chargecamera > 0)
		chargecamera -= 4;
	if (chargecamera < 0)
		chargecamera += 4;
}
_cam_x += chargecamera;	
#endregion

//Clamp the Position to within the room
_cam_x = clamp(_cam_x, 0, room_width - camera_get_view_width(view_camera[0]));
_cam_y = clamp(_cam_y, 0, room_height - camera_get_view_height(view_camera[0]));

#region Camera Shake
if (global.panic == 1) {
    panicshake = clamp(lerp(1, 2.15,(global.wave / global.maxwave)),1,2.15)
    panicshakeacc = (3 / room_speed)
} else {
	panicshake = 0;
	panicshakeacc = 0;
}
panicshake = approach(panicshake, 0, panicshakeacc);
shake_mag = approach(shake_mag, 0, shake_mag_acc);
if (shake_mag != 0) {
	_shake_x += irandom_range((-shake_mag), shake_mag)
	_shake_y += irandom_range((-shake_mag), shake_mag)
}
if (panicshake != 0) {
	_panic_shake_x += irandom_range((-panicshake), panicshake)
	_panic_shake_y += irandom_range((-panicshake), panicshake)
}
#endregion

Cam_x = _cam_x + _shake_x + _panic_shake_x;
Cam_y = _cam_y + _shake_y + _panic_shake_y;


//Set Camera Position
camera_set_view_pos(view_camera[0], Cam_x, Cam_y);


#endregion


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