//Variables
var _cam_x = camera_get_view_x(view_camera[0])
var _cam_y = camera_get_view_y(view_camera[0])
zoom = 0
var _drawx = 125 + _cam_x
var _drawy = 100 + _cam_y
//Maxangle

maxangle = clamp(floor(arctan((room_height/room_width)/_cam_y)), 0, 3)
/*
//Panic Bg Update
if global.panicbg = true && global.panic = true {
	var panic = (global.wave/global.maxwave)
	var time = (current_time / 1000)
	if (sin(time * panic) * panic) = 0
		global.wave = (global.maxwave - (((global.minutes * 60) + global.seconds) * 60))
}*/
//Collided with Player
if point_in_rectangle(obj_player.x,obj_player.y, _drawx - 80, _drawy - 85,_drawx + 80,_drawy + 85)
collided = true
else
collided = false
//Alpha
if collided = true
	alpha = 0.5
else
	alpha = 1

if (global.hudmode == 1)
    visible = false
else if (room == strongcold_endscreen || room == rank_room || room == timesuproom || room == Realtitlescreen || room == Scootertransition || room == characterselect)
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
if ((global.panic == 1 && global.minutes < 1) || player.sprite_index == spr_player_timesup)
{
    shake_mag = 2
    shake_mag_acc = (3 / room_speed)
}
else if (global.panic == 1 && basement == 0)
{
    shake_mag = 2
    shake_mag_acc = (3 / room_speed)
}
if (shake_mag > 0)
{
    shake_mag -= shake_mag_acc
    if (shake_mag < 0)
        shake_mag = 0
}
if (instance_exists(player) && player.state != 36 && player.state != 55)
    target = player
if (golf == 1 && instance_exists(obj_pizzaball)) {
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

if angle != 0 && global.freezeframe = false
	angle = approach(angle,0,0.25)
if targetzoom1 < 960 && global.freezeframe = false
	targetzoom1 += 16
else if global.freezeframe = false
	targetzoom1 = 960
if targetzoom2 < 540 && global.freezeframe = false
	targetzoom2 += 9
else if global.freezeframe = false
	targetzoom2 = 540
//Zoom and Angles 2	
camera_set_view_angle(view_camera[0], angle)		
camera_set_view_size(view_camera[0],targetzoom1,targetzoom2)
//Charge Camera
if target = player
{
	if (player.state == 91 || player.state == states.jetpack || player.state == 37)
	{
		if (chargecamera > (player.xscale * 100))
			chargecamera -= 2
		if (chargecamera < (player.xscale * 100))
			chargecamera += 2
	}
	else
	{
	    if (chargecamera > 0)
			chargecamera -= 2
		if (chargecamera < 0)
			chargecamera += 2
	}
	
}

//Camera X
camera_set_view_pos(view_camera[0],target_x - (targetzoom1 / 2) + (chargecamera + golfdistancex + p2pdistancex)  + floor(irandom_range(-shake_mag, shake_mag)/2), camera_get_view_y(view_camera[0]))			
camera_set_view_pos(view_camera[0],clamp(camera_get_view_x(view_camera[0]), 0 + floor(irandom_range(-shake_mag, shake_mag)/2), (room_width - targetzoom1)+ floor(irandom_range(-shake_mag, shake_mag)/2)),camera_get_view_y(view_camera[0]))
//Camera Y	
camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]), ((target_y - (targetzoom2 / 2)) + golfdistancey + p2pdistancey ) + irandom_range(-shake_mag, shake_mag))		
camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),clamp(camera_get_view_y(view_camera[0]), 0 + irandom_range(-shake_mag, shake_mag), (room_height - targetzoom2) + irandom_range(-shake_mag, shake_mag)))
#endregion
target_xold = target_x
target_yold = target_y



