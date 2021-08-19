if (ds_list_find_index(global.saveroom, id) == -1 && global.snickchallenge == 0)
{
    global.combotime = 60
	global.pausecombotime = true
    obj_tv.alarm[1] = 75
	obj_camera.alarm[1] = 60
	global.storedtaminute = global.taminutes;
	global.storedtasecond = global.taseconds;
    var cx = (x + (sprite_width / 2))
    var cy = (y + (sprite_height / 2))
    instance_create(cx, cy, obj_bangeffect)
    instance_create(cx, cy, obj_slapstar)
    instance_create(cx, cy, obj_slapstar)
    instance_create(cx, cy, obj_slapstar)
    instance_create(cx, cy, obj_baddiegibs)
    instance_create(cx, cy, obj_baddiegibs)
    instance_create(cx, cy, obj_baddiegibs)
    instance_create(x, y, obj_panicchanger)
	with (obj_camera)
    {
        shake_mag = 3
        shake_mag_acc = (3 / room_speed)
	}
    if instance_exists(obj_minipillar)
    {
        with (obj_minipillar)
            fadetopanic = 1
    }
    if instance_exists(obj_reverseminipillar)
    {
        with (obj_reverseminipillar)
            fadetopanic = 1
    }
    with (instance_create(x + 112 * sign(image_xscale), y + 64, obj_baddie_dead))
	{
        sprite_index = spr_hungrypillar_dead
		image_xscale = other.image_xscale
		canrotate = true
		hsp = other.initialhsp
		vsp = other.initialvsp
	}
    scr_soundeffect(11)
    instance_create(x, (y + 600), obj_itspizzatime)

    global.panic = 1
	//Escape Time
	scr_escapetimes()
	
    global.wave = 0
    global.maxwave = (((global.minutes * 60) + global.seconds) * 60)

	if global.panicbg = true
		scr_panicbg_init()
	
    ds_list_add(global.saveroom, id)
}


