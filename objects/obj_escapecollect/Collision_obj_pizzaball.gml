if other.state = 100 {
if character != "not in the game"
	{
		if audio_is_playing(sfx_collecttopping)
		audio_stop_sound(sfx_collecttopping)
		scr_soundeffect(sfx_collecttopping)
	}
	else
	{
		if audio_is_playing(sfx_not in the gamecollecttopping)
		audio_stop_sound(sfx_not in the gamecollecttopping)
		scr_soundeffect(sfx_not in the gamecollecttopping)
	}
with other.id
{
	if grabbedby = 1
	with obj_player1 {
    collectscore = (collectscore + 10)
    if (character == "V") && vigihealth < 250
        vigihealth += 5
	}
	else
	with obj_player2
	{
    collectscore = (collectscore + 10)
    if (character == "V") && vigihealth < 250
        vigihealth += 5
	}
}
if global.combotime < 60
global.combotime += 1
else
global.combotime = 60
global.pausecombotime = true
obj_tv.alarm[1] = 75
with (instance_create((x + 16), y, obj_smallnumber))
    number = "10"
	with instance_create(x,y, obj_collecteffect)
	{
	sprite_index = other.sprite_index
	choosed = true;
	}
instance_destroy()



	
	
}