if (ds_list_find_index(global.baddieroom, id) == -1 && important == 0)
{
    var i = random_range(0, 100)
    if (i >= 95)
        scr_soundeffect(40, 41, 42, 43, 44, 45, 46, 47, 48, 49)
    scr_soundeffect(11)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
	with instance_create(x, y, obj_goop) {
	vsp = random_range(-2,-8)
	hsp = random_range(2,6)
	_direction = sign(hsp)
	}
	
	with instance_create(x, y, obj_goop) {
	vsp = random_range(-2,-8)
	hsp = random_range(-2,-6)
	_direction = sign(hsp)
	}		
    with (obj_camera)
    {
		
        shake_mag = 3
        shake_mag_acc = (3 / room_speed)
    }
    with (instance_create(x, y, obj_shrimp_dead)) {
        sprite_index = other.spr_dead
		if other.shrimptype = 0
			paletteselect = 0 
		else
			paletteselect = 1
		spr_palette = spr_shrimp_palette
	}
    ds_list_add(global.baddieroom, id)
    obj_tv.image_index = random_range(0, 4)
    global.combo = (global.combo + 1)
    if (global.nocombo == 0)
    {
        if (global.combo == 1)
        {
            if (grabbedby == 1)
                obj_player1.collectscore = (obj_player1.collectscore + 10)
            else if (grabbedby == 2)
                obj_player2.collectscore = (obj_player2.collectscore + 10)
            else
                obj_player1.collectscore = (obj_player1.collectscore + 10)
            with (instance_create(x, y, obj_smallnumber))
                number = "10"
            global.style += 5
        }
        if (global.combo == 2)
        {
            if (grabbedby == 1)
                obj_player1.collectscore = (obj_player1.collectscore + 20)
            else if (grabbedby == 2)
                 obj_player2.collectscore = (obj_player2.collectscore + 20)
            else
                obj_player1.collectscore = (obj_player1.collectscore + 20)
            with (instance_create(x, y, obj_smallnumber))
                number = "20"
            global.style += 5
        }
        if (global.combo == 3)
        {
            if (grabbedby == 1)
                obj_player1.collectscore = (obj_player1.collectscore + 40)
            else if (grabbedby == 2)
                 obj_player2.collectscore = (obj_player2.collectscore + 40)
            else
                obj_player1.collectscore = (obj_player1.collectscore + 40)
            with (instance_create(x, y, obj_smallnumber))
                number = "40"
            global.style += 5
        }
        if (global.combo >= 4)
        {
            if (grabbedby == 1)
                obj_player1.collectscore = (obj_player1.collectscore + 80)
            else if (grabbedby == 2)
                 obj_player2.collectscore = (obj_player2.collectscore + 80)
            else
                obj_player1.collectscore = (obj_player1.collectscore + 80)
            with (instance_create(x, y, obj_smallnumber))
                number = "80"
            global.style += 5
        }
    }
    global.combotime = 60
	global.pausecombotime = true
    obj_tv.alarm[1] = 75	
}
else if (ds_list_find_index(global.baddieroom, id) == -1 && important == 1)
{
    scr_soundeffect(11)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    with (obj_camera)
    {
		
        shake_mag = 3
        shake_mag_acc = (3 / room_speed)
    }
    with (instance_create(x, y, obj_shrimp_dead)) {
        sprite_index = other.spr_dead
		if other.shrimptype = 0
			paletteselect = 0 
		else
			paletteselect = 1
		spr_palette = spr_shrimp_palette
	}
}
if (dropcoin == 1)
{
    with (instance_create(x, y, obj_pizzacoin))
        hsp = choose(-2, 2)
}


