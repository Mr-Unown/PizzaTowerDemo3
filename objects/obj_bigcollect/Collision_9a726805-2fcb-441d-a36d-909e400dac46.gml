if other.state = 100 {
with other.id
{
	if grabbedby = 1
	with obj_player1 {
    collectscore = (collectscore + 100)
    if (character == "V") && vigihealth < 250
        vigihealth += 25
	}
	else
	with obj_player2
	{
    collectscore = (collectscore + 100)
    if (character == "V") && vigihealth < 250
        vigihealth += 25
	}
}
with (instance_create(x, y, obj_smallnumber))
    number = "100"
if global.combotime < 60
global.combotime += 10
else
global.combotime = 60
global.pausecombotime = true
obj_tv.alarm[1] = 75
scr_soundeffect(32)
instance_destroy()



	
	
}