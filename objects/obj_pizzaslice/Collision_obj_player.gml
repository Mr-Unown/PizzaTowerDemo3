with other.id
{
    collectscore = (collectscore + 25)
    if (character == "V") && vigihealth < 250
        vigihealth += 15
}
with (instance_create(x, y, obj_smallnumber))
    number = "25"
if audio_is_playing(sfx_collecttopping)
    audio_stop_sound(sfx_collecttopping)
	if global.combotime < 60
	global.combotime += 5
	else
	global.combotime = 60
	global.pausecombotime = true
    obj_tv.alarm[1] = 75
scr_soundeffect(sfx_collecttopping)
instance_destroy()
repeat 3
	instance_create(x + random_range(-3,3),y + random_range(-3,3), obj_collecteffect)

