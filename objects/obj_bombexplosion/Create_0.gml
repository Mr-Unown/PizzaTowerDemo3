mask_index = spr_explosionmask
image_speed = 0.5
vigiexplode = 0
if audio_is_playing(sfx_explosion)
    audio_stop_sound(sfx_explosion)
scr_soundeffect(sfx_explosion)
alarm[0] = 5
bombjump = false;