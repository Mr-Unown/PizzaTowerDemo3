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
scr_soundeffect(sfx_collectgiantpizza)
var player = focused_player()
scr_queue_tvanim(player.spr_playertv_victory)
instance_destroy()

repeat 10
		instance_create(x + random_range(-10,10),y + random_range(-10,10), obj_collecteffect)