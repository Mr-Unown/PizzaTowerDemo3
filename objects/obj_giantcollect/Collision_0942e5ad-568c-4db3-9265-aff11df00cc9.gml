with (instance_create(x, y, obj_smallnumber))
    number = "1000"
with other.id
{
    collectscore = (collectscore + 1000)
    if (character == "V") && vigihealth < 250
        vigihealth += 100
}
if global.combotime < 60
global.combotime += 20
else
global.combotime = 60
global.pausecombotime = true
obj_tv.alarm[1] = 75
scr_soundeffect(6)
instance_destroy()

