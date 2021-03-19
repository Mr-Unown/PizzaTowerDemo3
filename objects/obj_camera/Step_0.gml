//Collided with Player
var _cam_x = camera_get_view_x(view_camera[0])
var _cam_y = camera_get_view_y(view_camera[0])
var _drawx = 125 + _cam_x
var _drawy = 100 + _cam_y
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
{
    if (golf == 1 && instance_exists(obj_pizzaball))
        target = obj_pizzaball
    else
        target = player
    var coopdistance = (distance_to_object(obj_player2) / 2)
}
if (zoom == 1)
{
    maxangle = clamp(1, 0, (room_height - targetzoom2))
    if (angle == 0)
        angle = random_range((-maxangle), maxangle)
    camera_set_view_angle(view_camera[0], angle)
    targetzoom1 = 896
    targetzoom2 = 504
    __view_set(2, 0, 896)
    __view_set(3, 0, 504)
    if (player.state == 91 || player.state == states.jetpack || player.state == 37)
    {
        if (chargecamera > (player.xscale * 75))
            chargecamera -= 2
        if (chargecamera < (player.xscale * 75))
            chargecamera += 2
        __view_set(0, 0, (((target.x - (targetzoom1 / 2)) + chargecamera) + p2pdistancex))
    }
    else
    {
        if (chargecamera > 0)
            chargecamera -= 2
        if (chargecamera < 0)
            chargecamera += 2
        __view_set(0, 0, (((target.x - (targetzoom1 / 2)) + chargecamera) + p2pdistancex))
    }
    __view_set(0, 0, clamp(__view_get(0, 0), 0, (room_width - targetzoom1)))
    __view_set(1, 0, (target.y - (targetzoom2 / 2)))
    __view_set(1, 0, clamp(__view_get(1, 0), 0, (room_height - targetzoom2)))
    if (shake_mag != 0)
    {
        __view_set(0, 0, (((target.x - (targetzoom1 / 2)) + chargecamera) + p2pdistancex))
        __view_set(0, 0, clamp(__view_get(0, 0), 0, (room_width - targetzoom1)))
        __view_set(1, 0, ((target.y - (targetzoom2 / 2)) + irandom_range((-shake_mag), shake_mag)))
        __view_set(1, 0, clamp(__view_get(1, 0), (0 + irandom_range((-shake_mag), shake_mag)), ((room_height - targetzoom2) + irandom_range((-shake_mag), shake_mag))))
    }
    debugfreezeframe += (1 / room_speed)
    debugmaxfreezeframe = 0
}
else if (zoom == 0)
{
    maxangle = 2.5
    angle = 0
    camera_set_view_angle(view_camera[0], 0)
    targetzoom1 = 960
    targetzoom2 = 540
    __view_set(2, 0, 960)
    __view_set(3, 0, 540)
    if (player.state == 91 || player.state == states.jetpack || player.state == 37)
    {
        if (chargecamera > (player.xscale * 100))
            chargecamera -= 2
        if (chargecamera < (player.xscale * 100))
            chargecamera += 2
        __view_set(0, 0, (((target.x - (targetzoom1 / 2)) + chargecamera) + p2pdistancex))
    }
    else
    {
        if (chargecamera > 0)
            chargecamera -= 2
        if (chargecamera < 0)
            chargecamera += 2
        __view_set(0, 0, (((target.x - (targetzoom1 / 2)) + chargecamera) + p2pdistancex))
    }
    __view_set(0, 0, clamp(__view_get(0, 0), 0, (room_width - targetzoom1)))
    __view_set(1, 0, (target.y - (targetzoom2 / 2)))
    __view_set(1, 0, clamp(__view_get(1, 0), 0, (room_height - targetzoom2)))
    if (shake_mag != 0)
    {
        __view_set(0, 0, (((target.x - (targetzoom1 / 2)) + chargecamera) + p2pdistancex))
        __view_set(0, 0, clamp(__view_get(0, 0), 0, (room_width - targetzoom1)))
        __view_set(1, 0, ((target.y - (targetzoom2 / 2)) + irandom_range((-shake_mag), shake_mag)))
        __view_set(1, 0, clamp(__view_get(1, 0), (0 + irandom_range((-shake_mag), shake_mag)), ((room_height - targetzoom2) + irandom_range((-shake_mag), shake_mag))))
    }
    if (debugmaxfreezeframe != debugfreezeframe && debugfreezeframe != 0)
    {
        debugmaxfreezeframe = debugfreezeframe
        debugfreezeframe = 0
    }
}


