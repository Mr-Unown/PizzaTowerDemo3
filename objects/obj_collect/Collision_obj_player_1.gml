if audio_is_playing(sfx_collecttopping)
    audio_stop_sound(sfx_collecttopping)
if audio_is_playing(sfx_cronch)
    audio_stop_sound(sfx_cronch)
if(obj_player.character == "PI")
	scr_soundeffect(sfx_cronch)
else
	scr_soundeffect(sfx_collecttopping)
global.collect += 10
global.heattime = 120
with (instance_create((x + 16), y, obj_smallnumber))
    number = "10"
with(instance_create(x, y, obj_collectpoint))
	sprite_index = other.id.sprite_index
instance_destroy()

