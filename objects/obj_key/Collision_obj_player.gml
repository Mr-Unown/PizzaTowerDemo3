with (obj_player1)
{
    if place_meeting(x, y, other.id)
    {
        if (state != 27 && state != 24 && state != 11 && state != 15 && state != 13 && state != 25 && state != 18 && state != 73)
        {
            instance_destroy(other.id)
            global.key_inv = 1
            key_particles = 1
            alarm[7] = 30
            if audio_is_playing(sfx_collecttoppin)
                audio_stop_sound(sfx_collecttoppin)
            scr_soundeffect(sfx_collecttoppin)
            obj_player1.state = 56
            obj_player1.image_index = 0
			global.combotime = 60
			global.pausecombotime = true
			obj_tv.alarm[1] = 75		
        }
    }
}
with (obj_player2)
{
    if place_meeting(x, y, other.id)
    {
        if (state != 27 && state != 24 && state != 11 && state != 15 && state != 13 && state != 25 && state != 18 && state != 73)
        {
            instance_destroy(other.id)
            global.key_inv = 1
            key_particles = 1
            alarm[7] = 30
            obj_player2.state = 56
            obj_player2.image_index = 0
            if audio_is_playing(sfx_collecttoppin)
                audio_stop_sound(sfx_collecttoppin)
            scr_soundeffect(sfx_collecttoppin)
			global.combotime = 60
			global.pausecombotime = true
			obj_tv.alarm[1] = 75					
        }
    }
}
/*
if (room == mansion_miniboss)
{
    with (obj_peppermandestroyable)
        instance_destroy()
    scr_soundeffect(sfx_smallvictory)
    if audio_is_playing(mu_chase)
        audio_stop_sound(mu_chase)
}
*/
if (room == ruin_4 && global.snickchallenge == 0 && global.panic == 0 && global.timeattack == 0)
{
    global.ruinmusic = 1
	with (obj_music) {
		if (!audio_is_playing(mu_ruinbmix))
		{
			global.music2 = global.music
			scr_sound(mu_ruinbmix)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_ruinbmix
			audio_sound_gain(mu_ruinbmix, (0), 0)
		}
	}

}
if (room == factory_7 && global.snickchallenge == 0 && global.panic == 0 && global.timeattack == 0)
{
    global.factorymusic = 1
	with (obj_music) {
		if (!audio_is_playing(mu_factory2))
		{
			global.music2 = global.music
			scr_sound(mu_factory2)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_factory2
			audio_sound_gain(mu_factory2, (0), 0)
		}
	}

}

