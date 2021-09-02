if other.state = 100 {
with other.id
{
	if grabbedby = 1
	with obj_player1 {
    collectscore = (collectscore + 1000)
    if (character == "V") && vigihealth < 250
        vigihealth += 100
	}
	else
	with obj_player2
	{
    collectscore = (collectscore + 1000)
    if (character == "V") && vigihealth < 250
        vigihealth += 100
	}
}
with (instance_create(x, y, obj_smallnumber))
    number = "1000"
if global.combotime < 60
global.combotime += 20
else
global.combotime = 60
global.pausecombotime = true
obj_tv.alarm[1] = 75
scr_soundeffect(sfx_collectgiantpizza)
instance_destroy()

repeat 10
		instance_create(x + random_range(-10,10),y + random_range(-10,10), obj_collecteffect)

	
	
}