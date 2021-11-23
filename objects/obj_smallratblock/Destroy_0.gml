if (ds_list_find_index(global.saveroom, id) == -1)
{
	if global.ratmode = true
	{
{
    with instance_create((x), (y), obj_baddie_dead)
	{
		sprite_index = spr_stupidratsmalldebris
		rotatedirection = choose(-1,0,1)
        rotatevalue = irandom_range(-20,20)
	}
    with (obj_camera)
    {
        shake_mag = 20
        shake_mag_acc = (40 / room_speed)
    }
	repeat (3)
	with (instance_create((x + 32 + random_range(-32, 32)), (y + 32 + random_range(-32, 32)), obj_balloonpop))
	{
		image_speed = 0.35
		sprite_index = spr_destroyablecloud
		image_angle = choose(0,90,180,270)
		vspeed = -3
	}				
        if (audio_is_playing(sfx_punch) || audio_is_playing(sfx_punch))
    {
        audio_stop_sound(sfx_punch)
        audio_stop_sound(sfx_punch)
    }
    scr_soundeffect(sfx_punch, sfx_punch)
    ds_list_add(global.saveroom, id)
}
	}
}