with (instance_create(x, y, obj_smallnumber))
    number = "100"
with other.id
{
    collectscore = (collectscore + 100)
    if (character == "V") && vigihealth < 250
        vigihealth += 25
}
if global.combotime < 60
global.combotime += 10
else
global.combotime = 60
global.pausecombotime = true
obj_tv.alarm[1] = 75
scr_soundeffect(32)
instance_destroy()


