if (room == steamy_1)
{
    global.srank = 40
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}

if (showtext == 1)
{
    xi = (500 + random_range(1, -1))
    if (yi > 475)
        yi -= 5
}
if (showtext == 0)
{
    xi = (500 + random_range(1, -1))
    if (yi < 675)
        yi += 1
}
if (!(obj_player.state == 17 && obj_player.state == 18 && obj_player.state == 11))
    once = 0
if (obj_player.y < 200 && obj_player.x > (room_width - 200))
    alpha = 0.5
else
    alpha = 1
if (global.collect > global.arank && shownranka == 0)
{
    //image_speed = 0
    message = "YOU GOT ENOUGH FOR RANK A"
    showtext = 1
    alarm[0] = 200
    //tvsprite = 635
    shownranka = 1
}
else if (global.collect > global.brank && shownrankb == 0)
{
    //image_speed = 0
    message = "YOU GOT ENOUGH FOR RANK B"
    showtext = 1
    alarm[0] = 200
    //tvsprite = 636
    shownrankb = 1
}
else if (global.collect > global.crank && shownrankc == 0)
{
    //image_speed = 0
    message = "YOU GOT ENOUGH FOR RANK C"
    showtext = 1
    alarm[0] = 200
    //tvsprite = 637
    shownrankc = 1
}
/*else if (obj_player.sprite_index == spr_player_levelcomplete)
{
    image_speed = 0.1
    alarm[0] = 50
    chose = 1
    tvsprite = 645
    once = 1
}
else if (obj_player.state == 66)
{
    image_speed = 0.1
    showtext = 1
    if (chose == 0)
        message = choose("OW!", "OUCH!", "OH!", "WOH!")
    alarm[0] = 50
    chose = 1
    tvsprite = 643
    once = 1
}
else if (obj_player.state == 29)
{
    alarm[0] = 50
    image_speed = 0.1
    tvsprite = 630
}*/
if (global.hurtcounter >= global.hurtmilestone)
{
    alarm[0] = 150
    //image_speed = 0.1
    if (obj_player.character == "P")
        character = "PIZZELLE"
    else
        character = "THE PIZZANO"
    message = (((("YOU HAVE HURT " + string(character)) + " ") + string(global.hurtmilestone)) + " TIMES...")
    //if (tvsprite != 634 && tvsprite != 633 && tvsprite != 632 && tvsprite != 631)
        //tvsprite = choose(634, 633, 632, 631)
    global.hurtmilestone += 3
}
/*else if (obj_player.state == 37)
{
    showtext = 1
    message = "SWEET DUDE!!"
    alarm[0] = 50
    tvsprite = 638
    once = 1
}
else if (obj_player.state == 53)
{
    image_speed = 0.1
    showtext = 1
    message = "OOPS!!"
    alarm[0] = 50
    tvsprite = 640
    once = 1
}
else if (global.combo != 0 && global.combotime != 0 && (tvsprite == 647 || tvsprite == 648 || tvsprite == 649))
{
    tvsprite = 648
    image_speed = 0
    if (global.combo >= 4)
        imageindexstore = 3
    else
        imageindexstore = (global.combo - 1)
}
else if (global.combotime == 0 && tvsprite == 648)
{
    tvsprite = 646
    image_index = imageindexstore
    alarm[0] = 50
}
else if (global.panic == 1)
{
    image_speed = 0.1
    tvsprite = 649
}*/
if (obj_player.state == 49)
{
    showtext = 1
    message = "KEY OBTAINED!"
    alarm[0] = 50
}

if global.panic == 0
{
	switch obj_player.state {
		case 0:
			if tvsprite == spr_pizzytv && tvcount < 1
				{
					tvsprite = choose(spr_pizzytv2, spr_pizzytv3, spr_pizzytv3, spr_pizzytv2)
					image_index = 0
				}
	
				if tvsprite != spr_pizzytv
					tvcount = 500
	
				if (tvsprite == spr_pizzytv2 && floor(image_index) == (image_number - 1)) || (tvsprite == spr_pizzytv3 && floor(image_index) == (image_number - 1))
				{
					tvcount = choose(500, 450, 400, 550)
					tvsprite = spr_pizzytv
					image_index = 0
				}
	
				if tvsprite == spr_pizzytv	
					tvcount -= 1
		break
		case 66:
			if tvsprite == spr_pizzytv && tvcount < 1
				{
					tvsprite = choose(spr_pizzytv2, spr_pizzytv3, spr_pizzytv3, spr_pizzytv2)
					image_index = 0
				}
	
				if tvsprite != spr_pizzytv
					tvcount = 500
	
				if (tvsprite == spr_pizzytv2 && floor(image_index) == (image_number - 1)) || (tvsprite == spr_pizzytv3 && floor(image_index) == (image_number - 1))
				{
					tvcount = choose(500, 450, 400, 550)
					tvsprite = spr_pizzytv
					image_index = 0
				}
	
				if tvsprite == spr_pizzytv	
					tvcount -= 1
		break
		case 110:
		case 111:
		case 100:
			tvcount = 500
			tvsprite = spr_pizzytvcotton
		break
		default:
			if tvsprite == spr_pizzytv && tvcount < 1
				{
					tvsprite = choose(spr_pizzytv2, spr_pizzytv3, spr_pizzytv3, spr_pizzytv2)
					image_index = 0
				}
	
				if tvsprite != spr_pizzytv
					tvcount = 500
	
				if (tvsprite == spr_pizzytv2 && floor(image_index) == (image_number - 1)) || (tvsprite == spr_pizzytv3 && floor(image_index) == (image_number - 1))
				{
					tvcount = choose(500, 450, 400, 550)
					tvsprite = spr_pizzytv
					image_index = 0
				}
	
				if tvsprite == spr_pizzytv	
					tvcount -= 1
			break
	}
}
if global.panic == 1
	tvsprite = spr_tvoff 
/*if obj_player.character == "P"
{
if obj_player.state != 100
	{
		if tvsprite = spr_pizzytv && tvcount < 1
		{
			tvsprite = choose(spr_pizzytv2, spr_pizzytv3, spr_pizzytv3, spr_pizzytv2)
			image_index = 0
		}
	
		if tvsprite != spr_pizzytv
			tvcount = 500
	
		if (tvsprite == spr_pizzytv2 && floor(image_index) == (image_number - 1)) || (tvsprite == spr_pizzytv3 && floor(image_index) == (image_number - 1))
		{
			tvcount = choose(500, 450, 400, 550)
			tvsprite = spr_pizzytv
			image_index = 0
		}
	
		if tvsprite = spr_pizzytv	
			tvcount -= 1
	}	
if obj_player.state == 100
	{
		tvcount = 500
		tvsprite = spr_pizzytvcotton
	}
}
if obj_player.character == "DEEZNUTS"
{
	if tvsprite = spr_null && tvcount < 1
	{
		tvsprite = choose(spr_null, spr_null, spr_null, spr_null)
		image_index = 0
	}
	
	if tvsprite != spr_null
		tvcount = 500
	
	if (tvsprite == spr_null && floor(image_index) == (image_number - 1)) || (tvsprite == spr_null && floor(image_index) == (image_number - 1))
	{
		tvcount = choose(500, 450, 400, 550)
		tvsprite = spr_null
		image_index = 0
	}
	
	if tvsprite = spr_null	
		tvcount -= 1
	
}*/
if global.key_inv == 1
	invsprite = spr_invkey
else
	invsprite = spr_invempty

if global.combotime != 0
	combofade += 0.2

if global.combotime == 1 && combofade > 1
	combofade = 1

if global.combotime == 0
	combofade -= 0.05
	
if global.combotime == 0 && combofade < 0
	combofade = 0
	
if tvsprite == spr_pizzytvcotton && obj_player.state != 100 && obj_player.state != 110 && obj_player.state != 111
	tvsprite = spr_pizzytv
	
if tvsprite == spr_tvturnon && floor(image_index) == (image_number - 1)
	tvsprite = spr_pizzytv
	
	
	
sprite_index = tvsprite
	if room = timesuproom
	{
	visible = 0	
	}