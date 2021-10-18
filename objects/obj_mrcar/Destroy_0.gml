if (ds_list_find_index(global.saveroom, id) == -1)
{
	var i = random_range(0, 100)
    if (i >= 97)
    	scr_soundeffect(sfx_scream1, sfx_scream2, sfx_scream3, sfx_scream4, sfx_scream5, sfx_scream6, sfx_scream7, sfx_scream8, sfx_scream9, sfx_scream10, sfx_screamhurt);
	instance_create(drawx,drawy, obj_safeexplosion)
	instance_create(drawx, drawy, obj_slapstar)
    instance_create(drawx, drawy, obj_slapstar)
    instance_create(drawx, drawy, obj_slapstar)
    instance_create(drawx, drawy, obj_baddiegibs)
    instance_create(drawx, drawy, obj_baddiegibs)
    instance_create(drawx, drawy, obj_baddiegibs)
	
	with instance_create(drawx, drawy, obj_pizzaslice)
	{
		_dir = choose(-1,1);
	}
		
	with instance_create(x, y, obj_goop) {
	vsp = random_range(-2,-8)
	hsp = random_range(2,6)
	_direction = sign(hsp);
	movespeed = abs(hsp);
	}
	
	with instance_create(x, y, obj_goop) {
	vsp = random_range(-2,-8)
	hsp = random_range(-2,-6)
	_direction = sign(hsp);
	movespeed = abs(hsp);
	}			
	repeat (4)
	instance_create(drawx + random_range(-128,128),drawy + random_range(-128,128), obj_safeexplosion)
    with (obj_camera)
    {
        shake_mag = 10
        shake_mag_acc = (10 / room_speed)
    }
    scr_soundeffect(sfx_breakmetal)
	scr_soundeffect(sfx_killenemy)
    ds_list_add(global.saveroom, id)
}


