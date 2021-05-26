//Collided with Player
var _cam_x = camera_get_view_x(view_camera[0])
var _cam_y = camera_get_view_y(view_camera[0])
var _drawx = 832 + _cam_x
var _drawy = 74 + _cam_y
if point_in_rectangle(obj_player.x,obj_player.y, _drawx - 80, _drawy - 85,_drawx + 80,_drawy + 101) //85)
collided = true
else
collided = false


var player = obj_player1
if (obj_player1.spotlight == 0)
    player = obj_player2
if (player.character == "V")
{
    if (player.vigihealth > 250)
        player.vigihealth = 250
    if (player.vigihealth < 0)
        player.vigihealth = 0
}
/*if (room == PP_room1 && global.snickchallenge == 0)
{
    tvsprite = spr_tvdefault
}*/
if global.miniboss = true
{
	global.combotime = 60
	global.pausecombotime = true
	obj_tv.alarm[1] = 75	
}
//Pause Combo
if global.snickchallenge = true
	global.pausecombotime = false

    if (room == Realtitlescreen || room == Tutorialtrap ||  room == Titlescreen || room == rank_room || room == cowboytask || room == hub_room2 || room == hub_room1)
        alpha = 0
    if (room == Titlescreen || room == Tutorialtrap || room == rank_room || room == cowboytask || room == hub_room3 || room == hub_room2 || room == hub_room1)
        tvsprite = spr_tvknight
    if (room == timesuproom || room == boss_room1 || room == Scootertransition || room == characterselect)
        visible = false
    else
        visible = true
    if (!(room == Titlescreen || room == Tutorialtrap || room == rank_room || room == cowboytask || room == hub_room2 || room == hub_room3  || room == hub_room1))
    {
        if collided = true
            alpha = 0.5
        else if (!(room == rank_room || room == timesuproom || room == boss_room1 || room == Realtitlescreen || room == Scootertransition || room == Titlescreen || room == Tutorialtrap || room == rank_room || room == cowboytask ||room == hub_room3   || room == hub_room2 || room == hub_room1))
            alpha = 1
    }



if (showtext == 1)
{
    xi = (500 + random_range(1, -1))
    if (yi > 500)
        yi -= 5
}
if (showtext == 0)
{
    xi = (500 + random_range(1, -1))
    if (yi < 600)
        yi += 1
}
if (!(obj_player.state == 24 && obj_player.state == 25 && obj_player.state == 18))
    once = 0
if instance_exists(obj_itspizzatime)
{
    image_speed = 0.25
    message = "GET TO THE EXIT!!"
    alarm[0] = 200
    showtext = 1
    tvsprite = spr_tvexit
}
if tvsprite = spr_tvboot
{
	if instance_exists(obj_fadeout)
		image_index = 0
    image_speed = 0.35
	sprite_index = tvsprite	
	if floor(image_index) == image_number - 1
	{
		showtext = 0
		tvsprite = spr_tvdefault
		image_speed = 0.1
		bootingup = true
	}
}
else if (global.collect > global.srank && shownranks == 0 && global.nocombo == 0)
{
    image_speed = 0.125
	if global.coop = false
    message = "YOU GOT ENOUGH FOR RANK S"
	else
	message = "WE GOT ENOUGH FOR RANK S"
    showtext = 1
    alarm[0] = 200
    tvsprite = spr_tvranks
    shownranks = 1
}
else if (global.collect > global.arank && shownranka == 0 && global.nocombo == 0)
{
    image_speed = 0
	if global.coop = false
    message = "YOU GOT ENOUGH FOR RANK A"
	else
	message = "WE GOT ENOUGH FOR RANK A"
    showtext = 1
    alarm[0] = 200
    tvsprite = spr_tvranka
    shownranka = 1
}
else if (global.collect > global.brank && shownrankb == 0 && global.nocombo == 0)
{
    image_speed = 0
	if global.coop = false
    message = "YOU GOT ENOUGH FOR RANK B"
	else
	message = "WE GOT ENOUGH FOR RANK B"
    showtext = 1
    alarm[0] = 200
    tvsprite = spr_tvrankb
    shownrankb = 1
}
else if (global.collect > global.crank && shownrankc == 0 && global.nocombo == 0)
{
    image_speed = 0
	if global.coop = false
    message = "YOU GOT ENOUGH FOR RANK C"
	else
	message = "WE GOT ENOUGH FOR RANK C"
    showtext = 1
    alarm[0] = 200
    tvsprite = spr_tvrankc
    shownrankc = 1
}/*
else if (obj_player.state == states.hurt) && chose = 0
{
    image_speed = 0.1
    showtext = 1
    message = choose("OW!", "OUCH!", "OH!", "WOH!")
    alarm[0] = 50
    chose = 1
    tvsprite = spr_tvhurt
    once = 1
}*/
else if (obj_player.sprite_index == obj_player.spr_golfwin)
{
    image_speed = 0.1
    alarm[0] = 50
    tvsprite = spr_tvclap
    once = 1
}
else if (obj_player.state == states.gameover || obj_player.state == states.timesup)
{
    alarm[0] = 50
    image_speed = 0.1
    tvsprite = spr_tvskull
}
else if (global.miniboss == 1)
{
    alarm[0] = 50
    image_speed = 0.1
    tvsprite = spr_tvnoise
}
else if (global.hurtcounter >= global.hurtmilestone)
{
    alarm[0] = 150
    image_speed = 0.1
    if (obj_player.character == "P")
        character = "PEPPINO"
    else if (obj_player.character == "N")
        character = "THE NOISE"
    else if (obj_player.character == "S")
        character = "SNICK"
    else if (obj_player.character == "V")
        character = "THE VIGILANTE"
    else if (obj_player.character == "PZ")
        character = "PIZZELLE"
    else if (obj_player.character == "PM")
        character = "PEPPERMAN"		
    else if (obj_player.character == "D")
        character = "DOUGIE"	
    message = (((("YOU HAVE HURT " + string(character)) + " ") + string(global.hurtmilestone)) + " TIMES...")
    if (tvsprite != spr_tvtalking1 && tvsprite != spr_tvtalking2 && tvsprite != spr_tvtalking3 && tvsprite != spr_tvtalking4)
        tvsprite = choose(spr_tvtalking1, spr_tvtalking2, spr_tvtalking3, spr_tvtalking4)
    global.hurtmilestone = (global.hurtmilestone + 3)
}
else if (obj_player.state == 44)
{
    showtext = 1
    message = "SWEET DUDE!!"
    alarm[0] = 50
    tvsprite = spr_tvrad
    once = 1
}
else if (global.combo != 0 && global.combotime != 0 && (tvsprite == spr_tvdefault || tvsprite == spr_tvcombo || tvsprite == spr_tvescape))
{
    tvsprite = spr_tvcombo
    image_speed = 0
    if (global.combo >= 4)
        imageindexstore = 3
    else
        imageindexstore = (global.combo - 1)
}
else if (global.combotime == 0 && tvsprite == spr_tvcombo)
{
    tvsprite = spr_tvcomboresult
    image_index = imageindexstore
    alarm[0] = 50
}
else if (room == Realtitlescreen)
{
    image_speed = 0.1
    tvsprite = spr_tvbanana
    alarm[0] = 2
    if (obj_mainmenuselect.selected == 0)
    {
        if (obj_mainmenuselect.optionselected == 0)
        {
            showtext = 1
            message = "START GAME"
        }
        if (obj_mainmenuselect.optionselected == 1)
        {
            showtext = 1
            message = "OPTION"
        }
        if (obj_mainmenuselect.optionselected == 2)
        {
            showtext = 1
            message = "EXIT GAME"
        }
    }
    else
    {
        showtext = 1
        message = ""
    }
}
else if (obj_player.state == states.keyget)
{
    showtext = 1
    message = "GOT THE KEY!"
    alarm[0] = 50
}
else if instance_exists(obj_noise_pushbutton)
{
    if (obj_noise_pushbutton.hsp != 0 && global.panic == 0)
    {
        showtext = 1
        message = "UH OH..."
        alarm[0] = 50
    }
}

if instance_exists(obj_pizzaball)
    global.golfbuffer = 50
if ((!instance_exists(obj_pizzaball)) && global.golfbuffer > 0)
    global.golfbuffer--

sprite_index = tvsprite
