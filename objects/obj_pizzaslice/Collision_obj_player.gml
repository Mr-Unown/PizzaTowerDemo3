global.collect += 20
instance_create(x, y, obj_20)
if audio_is_playing(sound_points)
    audio_stop_sound(sound_points)
scr_sound(sound_points)
instance_destroy()