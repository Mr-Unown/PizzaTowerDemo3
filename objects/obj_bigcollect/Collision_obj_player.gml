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
scr_soundeffect(sfx_collectpizza)
instance_destroy()
with instance_create(x + random_range(-5,5),y + random_range(-5,5), obj_collecteffect)
sprite_index = other.sprite_index
