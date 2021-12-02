if audio_is_playing(sfx_collecttopping)
    audio_stop_sound(sfx_collecttopping)
scr_soundeffect(sfx_collecttopping)
with other.id
{
    obj_player1.collectscore = (obj_player1.collectscore + 10)
    if (obj_player1.character == "V") && obj_player1.vigihealth < 250
        obj_player1.vigihealth += 5
}
if global.combotime < 60
global.combotime += 1
else
global.combotime = 60
global.pausecombotime = true
obj_tv.alarm[1] = 75
with (instance_create((x + 16), y, obj_smallnumber))
    number = "10"
instance_destroy()
with instance_create(x,y, obj_collecteffect)
	{
	sprite_index = other.sprite_index
	choosed = true;
	}


