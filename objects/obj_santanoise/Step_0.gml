if (floor(image_index) == 53 && (!instance_exists(obj_noisebomb)))
{
    global.minutes = 1
    global.seconds = 40
    obj_camera.alarm[1] = 1
    if (!audio_is_playing(sfx_enemyprojectile))
        scr_soundeffect(8)
    global.miniboss = 1
    with instance_create((x + 50), (y - 50), obj_noisebomb)
	{
	sprite_index = spr_noisebomb_intro
	//Follower DS_list
	ds_list_add(global.follower, id);
	global.combotime = 60
	global.pausecombotime = true
	obj_tv.alarm[1] = 75	
	global.noisebombfollow = 1
	}
}
if (floor(image_index) == 31)
{
    if (!audio_is_playing(sfx_noisewoah))
        scr_soundeffect(21)
}
scr_collide()
if (grounded && dust == 0)
{
    dust = 1
    instance_create(x, y, obj_landcloud)
}
	global.combotime = 60
	global.pausecombotime = true
	obj_tv.alarm[1] = 75	

