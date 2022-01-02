if audio_is_playing(sfx_collecttopping)
    audio_stop_sound(sfx_collecttopping)
scr_soundeffect(sfx_collecttopping)
with other.id
{
    collectscore = (collectscore + (10 + (global.stylethreshold * 2)))
    if (character == "V") && vigihealth < 250
        vigihealth += 5
}
if global.combotime < 60
global.combotime += 1
else
global.combotime = 60
global.pausecombotime = true
obj_tv.alarm[1] = 75
with (instance_create((x + 16), y, obj_smallnumber))
    number = string( 10 + (global.stylethreshold * 2))
instance_destroy()
with instance_create(x,y, obj_collecteffect)
	{
	sprite_index = other.sprite_index
	choosed = true;
	}


