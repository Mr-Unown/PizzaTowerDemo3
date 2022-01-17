//Collided with Player
var _cam_x = camera_get_view_x(view_camera[0])
var _cam_y = camera_get_view_y(view_camera[0])
var _drawx = 832 + _cam_x
var _drawy = 74 + _cam_y
if point_in_rectangle(obj_player.x,obj_player.y, _drawx - 80, _drawy - 85,_drawx + 80,_drawy + 101) //85)
collided = true
else if global.newhud = true && point_in_rectangle(obj_player.x,obj_player.y, _drawx - 80, _drawy - 1000,_drawx + 85,_drawy + 101) //85)
collided = true
else if global.newhud = true && shownewtext = true && point_in_rectangle(obj_player.x,obj_player.y, _drawx - 300, _drawy - 1000,_drawx + 85,_drawy + 32) //85)
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
//Time
if frozen = true && global.freezeframe = false
{
	alarm[1] = frozenalarm;
	frozen = false;		
}
//Pause Combo
if global.snickchallenge = true
	global.pausecombotime = false

    if (room == global.roomstart[global.newtitlescreen] || room == Tutorialtrap ||  room == Titlescreen || room == rank_room || room == cowboytask || room == hub_room3 || room == hub_room2 || room == hub_room1)
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
        else if (!(room == rank_room || room == timesuproom || room == boss_room1 || room == global.roomstart[global.newtitlescreen] || room == Scootertransition || room == Titlescreen || room == Tutorialtrap || room == rank_room || room == cowboytask ||room == hub_room3   || room == hub_room2 || room == hub_room1))
            alpha = 1
    }
if global.newhud = true
{
	if collided = true
		newhudyoffset = approach(newhudyoffset,-600,16)
	else
		newhudyoffset = approach(newhudyoffset,0,16)
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
    _message = "GET TO THE EXIT!!"
    alarm[0] = 200
    showtext = 1
    tvsprite = spr_tvexit
}
if tvsprite = spr_tvboot && bootingup = false
{
	image_index = 0
    image_speed = 0.35
	sprite_index = tvsprite	
	bootingup = true
}
else if tvsprite = spr_tvboot && bootingup = true
{
	if floor(image_index) == image_number - 1
	{
		showtext = 0
		tvsprite = spr_tvdefault
		image_speed = 0.1
	}
}
else if (global.collect > global.srank && shownranks == 0 && global.timeattack == false && global.nocombo == 0)
{
    image_speed = 0.125
	if global.coop = false
    _message = "YOU GOT ENOUGH FOR RANK S"
	else
	_message = "WE GOT ENOUGH FOR RANK S"
    showtext = 1
    alarm[0] = 200
    tvsprite = spr_tvranks
    shownranks = 1
}
else if (global.collect > global.arank && shownranka == 0 && global.timeattack == false && global.nocombo == 0)
{
    image_speed = 0
	if global.coop = false
    _message = "YOU GOT ENOUGH FOR RANK A"
	else
	_message = "WE GOT ENOUGH FOR RANK A"
    showtext = 1
    alarm[0] = 200
    tvsprite = spr_tvranka
    shownranka = 1
}
else if (global.collect > global.brank && shownrankb == 0 && global.timeattack == false && global.nocombo == 0)
{
    image_speed = 0
	if global.coop = false
    _message = "YOU GOT ENOUGH FOR RANK B"
	else
	_message = "WE GOT ENOUGH FOR RANK B"
    showtext = 1
    alarm[0] = 200
    tvsprite = spr_tvrankb
    shownrankb = 1
}
else if (global.collect > global.crank && shownrankc == 0 && global.timeattack == false && global.nocombo == 0)
{
    image_speed = 0
	if global.coop = false
    _message = "YOU GOT ENOUGH FOR RANK C"
	else
	_message = "WE GOT ENOUGH FOR RANK C"
    showtext = 1
    alarm[0] = 200
    tvsprite = spr_tvrankc
    shownrankc = 1
}
else if (global.timeattackpoints > global.stimerank && showntimeranka == 0 && global.timeattack = true)
{
    image_speed = 0
	if global.coop = false
    _message = "YOU ONLY GOT ENOUGH FOR RANK A"
	else
	_message = "WE ONLY GOT ENOUGH FOR RANK A"
    showtext = 1
    alarm[0] = 200
    tvsprite = spr_tvranka
    showntimeranka = 1
}
else if (global.timeattackpoints > global.atimerank && showntimerankb == 0 && global.timeattack = true)
{
    image_speed = 0
	if global.coop = false
    _message = "YOU ONLY GOT ENOUGH FOR RANK B"
	else
	_message = "WE ONLY GOT ENOUGH FOR RANK B"
    showtext = 1
    alarm[0] = 200
    tvsprite = spr_tvrankb
    showntimerankb = 1
}
else if (global.timeattackpoints > global.btimerank && showntimerankc == 0 && global.timeattack = true)
{
    image_speed = 0
	if global.coop = false
    _message = "YOU ONLY GOT ENOUGH FOR RANK C"
	else
	_message = "WE ONLY GOT ENOUGH FOR RANK C"
    showtext = 1
    alarm[0] = 200
    tvsprite = spr_tvrankc
    showntimerankc = 1
}
else if (global.timeattackpoints > global.ctimerank && showntimerankd == 0 && global.timeattack = true)
{
    image_speed = 0.35
	if global.coop = false
    _message = "YOU ONLY GOT ENOUGH FOR RANK D"
	else
	_message = "WE ONLY GOT ENOUGH FOR RANK D"
    showtext = 1
    alarm[0] = 200
    tvsprite = spr_tvrankd
    showntimerankd = 1
}
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
    _message = (((("YOU HAVE HURT " + string(character)) + " ") + string(global.hurtmilestone)) + " TIMES...")
	scr_queue_message("It seems that our counters indicate that some "+ choose("idiot","moron","ignoramus","dingus","buffon") + " Pizzaman has been hurt " + string(global.hurtmilestone)+ " times...");
    if (tvsprite != spr_tvtalking1 && tvsprite != spr_tvtalking2 && tvsprite != spr_tvtalking3 && tvsprite != spr_tvtalking4)
        tvsprite = choose(spr_tvtalking1, spr_tvtalking2, spr_tvtalking3, spr_tvtalking4)
	var randomchance = irandom_range(0,100);
	if (randomchance < global.quipsfrequency)
	{
		scr_soundeffect(sfx_mammamia,sfx_oh,sfx_ohman);
	}
    global.hurtmilestone = (global.hurtmilestone + 3)
}
else if (obj_player.state == 44)
{
    showtext = 1
    _message = "SWEET DUDE!!"
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
else if (obj_player.state == states.keyget)
{
    showtext = 1
    _message = "GOT THE KEY!"
    alarm[0] = 50
}
else if instance_exists(obj_noise_pushbutton)
{
    if (obj_noise_pushbutton.hsp != 0 && global.panic == 0)
    {
        showtext = 1
        _message = "UH OH..."
        alarm[0] = 50
    }
}

if instance_exists(obj_pizzaball)
    global.golfbuffer = 50
if ((!instance_exists(obj_pizzaball)) && global.golfbuffer > 0)
    global.golfbuffer--
//New TV
var player = (obj_player1.spotlight = false ? obj_player2 : obj_player1)
var _state = player.state;
if !(global.freezeframe = false && !((player.state == states.backbreaker && player.sprite_index  == player.spr_taunt) || player.state == states.frozen || player.state == states.portal))
{
	var storedstate = player.tauntstoredstate;
	if player.state = states.frozen
	{
		if player.frozenstate != states.backbreaker && player.frozenspriteindex != player.spr_taunt
		storedstate = player.frozenstate;
		else
		storedstate = player.tauntstoredstate;
	}
	_state = storedstate
}	
if global.miniboss = true
{
    image_speed = 0.35
	newtvsprite = spr_tv_noiseboss
	sprite_index = newtvsprite	
}
else if newtvsprite = spr_tv_static
{
    image_speed = 0.35
	sprite_index = newtvsprite		
}
else if newtvsprite = spr_tv_open && bootingup = false 
{
	image_index = 0
    image_speed = 0.35
	sprite_index = newtvsprite	
	bootingup = true
}
else if newtvsprite = spr_tv_open && bootingup = true
{
	if floor(image_index) == image_number - 1
	{
		idle = 0
		showtext = 0
		newtvsprite = spr_tv_blank
		image_speed = 0.35
	}
}
else if global.newhud = true && tvanim = false && ds_queue_size(global.newhudtvanim) > 1 && newtvsprite != spr_tv_open && newtvsprite != spr_tv_static
{
	tvanimsprite = ds_queue_dequeue(global.newhudtvanim);
	tvanimtimer = ds_queue_dequeue(global.newhudtvanim);
	tvanim = true
	drawstatic = true
	drawstatictimer = 15
	oldsprite = newtvsprite 
	newtvsprite = tvanimsprite
}
else if global.newhud = true && tvanim = true && newtvsprite != spr_tv_open && newtvsprite != spr_tv_static
{
	newtvsprite = tvanimsprite
	image_speed = 0.35
	if tvanimtext = false
	{
		tvanimtimer -= 1	
		if tvanimtimer <= 0
		{
			tvanim = false
			drawstatic = true
			drawstatictimer = 15
			oldsprite = noone		
		}
	}
}
else if global.newhud = true && oldcharacter == player.character && (sprite_index != spr_tv_open && newtvsprite != spr_tv_open) && tvanim = false
{
	var channel = 0;
	image_speed = 0.35
	#region NEW TV
	switch(_state)
	{
		//case states.scaredjump:
		//newtvsprite = player.spr_playertv_scaredjump
		//channel = 11;		
		case states.ratmount:
		newtvsprite = gustvspr
		channel = 9;	
		break;
		case states.golf:
		newtvsprite = player.spr_playertv_golf
		channel = 9;	
		break;
		case states.firemouth:
		newtvsprite = player.spr_playertv_firemouth
		channel = 8;	
		break;
		case states.rocket:
		newtvsprite = player.spr_playertv_rocket
		channel = 7;
		break;
		case states.boxxedpep:
		newtvsprite = player.spr_playertv_boxxed;
		channel = 6;
		break;
		case states.keyget:
		case states.victory:
		newtvsprite = player.spr_playertv_victory;
		channel = 5;
		break;			
		case states.bombpep:
		case states.newbomb:
		newtvsprite = player.spr_playertv_bomb;
		channel = 4;
		break;			
		case states.fireass:
		newtvsprite = player.spr_playertv_fireass;
		channel = 3;
		break;			
		case states.knightpep:
		case states.knightpepattack:
		case states.knightpepslopes:
		newtvsprite = player.spr_playertv_knight;
		channel = 2;
		break;		
		case states.tumble:
		newtvsprite = player.spr_playertv_tumble;
		channel = 1;
		break;
		default:
		#region Normal
            if (idle < 400)
                idle++
            if (idle >= 300 && floor(image_index) >= (image_number - 1)) && (newtvsprite = player.spr_playertv_normalidle1 || newtvsprite = player.spr_playertv_normalidle2 || newtvsprite = player.spr_playertv_normalidle3)
            {
                idle = 0
                image_index = 0
				newtvsprite = player.spr_playertv_normal
            }
            if (idle >= 300 && newtvsprite != player.spr_playertv_normalidle1 && newtvsprite != player.spr_playertv_normalidle2 && newtvsprite != player.spr_playertv_normalidle3)
            {
                newtvsprite = choose(player.spr_playertv_normalidle1, player.spr_playertv_normalidle2, player.spr_playertv_normalidle3)
                image_index = 0
            }
			if idle < 300
				newtvsprite = player.spr_playertv_normal
			channel = 0;
			#endregion
		break;
	}
	#endregion	
	
	if newtvspritestore != channel && global.freezeframe = false
	{
		newtvspritestore = channel
		drawstatic = true
		drawstatictimer = 15
		oldsprite = newtvsprite 
	}
}
else if global.newhud = true && ((oldcharacter != player.character) || (oldplayer != player)) && tvanim = false
{
	alarm[0] = -1
	imageindexstore = 0
	image_index = 0
	image_speed = 0
	tvsprite = spr_tvboot;
	newtvsprite = spr_tv_open;
	sprite_index = spr_tvboot
	bootingup = false
	idle = 0
	oldcharacter = player.character
	oldplayer = player
}
#region Transformation text
switch(obj_player.state)
{
	case states.knightpep:
	case states.knightpepslopes:
	case states.knightpepattack:
	if ds_list_find_index(global.saveroom, "knight") = -1  
	{
		scr_queue_message("Wow! It seems that thunder has turned a seemingly-unknown-as-of-now fat man into a valiant and more easily identifiable knight! What mighty stead will he ride? What epic quest will he accomplish?");
		scr_queue_message("Maybe he will just slam into a wall and become incredibly boring again?");
		ds_list_add(global.saveroom, "knight")
	}
	break;
	case states.bombpep:
	if ds_list_find_index(global.saveroom, "bomb") = -1  
	{
		scr_queue_message("Whew... That Strange Unknown Pizzaman better be careful you might never know when that bomb will blow up!");
		scr_queue_message("I sure hope this strange man knows how to play Bomb Throw, if not... well I'm sure he'll be fine.");
		ds_list_add(global.saveroom, "bomb")
	}
	break;		
	case states.fireass:
	if ds_list_find_index(global.saveroom, "fireass") = -1  
	{
		scr_queue_message("Ouch! That's gotta hurt! Quickly, Stop, Drop, and Mope!");
		scr_queue_message("I sure hope that man has some asbestos pants...");
		ds_list_add(global.saveroom, "fireass")
	}	
	break;	
	case states.tumble:
	if ds_list_find_index(global.saveroom, "tumble") = -1  
	{
		scr_queue_message("Oh, looks like this man has taken the tumble! You better watch your step folks or this could happen to you!");
		scr_queue_message("At this point there is nothing you can do but hope to get bumped into a wall and not into a death trap!");
		ds_list_add(global.saveroom, "tumble")
	}	
	break;	
	case states.boxxedpep:
	if ds_list_find_index(global.saveroom, "boxxed") = -1  
	{
		scr_queue_message("Think about this! You were normal once, but after being crushed by that crusher now you have shrunken to a small size.");
		scr_queue_message("What a dingus! He should've watched more workplace safety videos. Luckily he can just jump into some cleansing water.");
		ds_list_add(global.saveroom, "boxxed")
	}	
	case states.rocket:
	if ds_list_find_index(global.saveroom, "rocket") = -1  
	{
		scr_queue_message("this is placeholder");
		scr_queue_message("rocket up yer ass xdxdxd");
		ds_list_add(global.saveroom, "rocket")
	}	
}
#endregion
//Sprite_index
if global.newhud = false
	sprite_index = tvsprite
else
	sprite_index = newtvsprite
if oldcombo != global.combo && global.newhud = true
{
	oldcombo = global.combo
	newshake = true;
	alarm[2] = 20
}
//Textbubble
if ds_queue_size(global.newhudmessage) > 1 && showingnewtext = false && newtvsprite != spr_tv_open && newtvsprite != spr_tv_static
{
	new_message = ds_queue_dequeue(global.newhudmessage);
	var tvspr = ds_queue_dequeue(global.newhudmessage);
	//Anim Spr
	if tvspr != noone
	{
		newtvsprite = tvspr
		tvanimtext = true;
		tvanim = true
		drawstatic = true
		drawstatictimer = 15
		oldsprite = newtvsprite 
	}
	shownewtext = true;
	showingnewtext = true;
	textbubblesprites = spr_tv_bubbleopen;
	textbubbleframes = 0;
	text_x = 300;
}
if textbubblesprites = spr_tv_bubbleopen && floor(textbubbleframes) >= sprite_get_number(spr_tv_bubbleopen) - 1
	textbubblesprites = spr_tv_bubble
if textbubblesprites = spr_tv_bubble
	text_x += -3.5
if textbubblesprites = spr_tv_bubbleclose && floor(textbubbleframes) >= sprite_get_number(spr_tv_bubbleclose) - 1
{
	new_message = ""
	shownewtext = false;
	showingnewtext = false;
	textbubbleframes = 0;
	text_x = 300;	
	//Anim Spr
	if tvanimtext = true
	{
		tvanimtext = false;
		tvanim = false
		drawstatic = true
		drawstatictimer = 15
		oldsprite = newtvsprite 
	}	
}
//Static
if global.freezeframe = false
{
	if drawstatic = true && drawstatictimer > 0
		drawstaticalpha = 1
	else
		drawstaticalpha = approach(drawstaticalpha,0,0.30)
	
	drawstatictimer--
	staticframe += 0.35;
}
textbubbleframes += 0.35;
//Combohud new
combox = wave(5,15,7,7)
