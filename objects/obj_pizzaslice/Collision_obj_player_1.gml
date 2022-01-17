global.collect += 25
with (instance_create(x, y, obj_smallnumber))
    number = "25"
if audio_is_playing(sfx_collecttopping)
    audio_stop_sound(sfx_collecttopping)
if audio_is_playing(sfx_cronch)
    audio_stop_sound(sfx_cronch)
if(obj_player.character == "PI")
	scr_soundeffect(sfx_cronch)
else
	scr_soundeffect(sfx_collecttopping)
global.heattime = 120
instance_destroy()

