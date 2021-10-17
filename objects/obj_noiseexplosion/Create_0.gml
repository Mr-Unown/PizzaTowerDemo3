mask_index = spr_explosionmask
image_speed = 0.5
if audio_is_playing(sfx_explosion)
    audio_stop_sound(sfx_explosion)
scr_soundeffect(sfx_explosion)
hurtplayer = 0
alarm[0] = 5
playerid = obj_player1