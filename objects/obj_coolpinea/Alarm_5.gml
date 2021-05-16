if (state != 94 && state == 102)
{
    if point_in_rectangle(x, y, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])), (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])))
    {
        if audio_is_playing(sfx_taunt)
            audio_stop_sound(sfx_taunt)
        scr_soundeffect(60)
    }
    image_index = random_range(0, sprite_get_number(spr_coolpinea_taunt))
    sprite_index = spr_coolpinea_taunt
    if (!instance_exists(taunteffect))
    {
        with (instance_create(x, y, obj_taunteffect))
        {
            depth = 0.5
            other.taunteffect = id
            baddie = 1
            baddieid = other.id
        }
    }
	taunttimer = 20
    state = 94
    alarm[5] = 100
    vsp = 0
    if (parrying == 0)
        hsp = 0
}


