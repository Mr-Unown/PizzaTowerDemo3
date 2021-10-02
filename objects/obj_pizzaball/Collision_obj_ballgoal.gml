instance_create(x, y, obj_slapstar)
instance_create(x, y, obj_slapstar)
instance_create(x, y, obj_slapstar)
instance_create(x, y, obj_baddiegibs)
instance_create(x, y, obj_baddiegibs)
instance_create(x, y, obj_baddiegibs)
instance_destroy()
instance_destroy(obj_pizzaballblock)
with (obj_tv)
{
    if (global.golfhit <= 1)
        _message = "HOLE IN ONE!!!"
    else if (global.golfhit <= 5)
        _message = "NICE SHOT!"
    else if (global.golfhit <= 10)
        _message = "GREAT!"
    else if (global.golfhit <= 20)
        _message = "GOOD!"
    else if (global.golfhit <= 30)
        _message = "OK"
    else
        _message = "TRY AGAIN"
    showtext = 1
    alarm[0] = 100
}
with (obj_baddiespawner)
{
    golf = 1
    ds_list_add(global.saveroom, id)
}
if (grabbedby == 1)
    var player = obj_player1
else
    player = obj_player2
with (player)
{
    with (instance_create(x, y, obj_pizzaballreward))
        playerid = other.id
    state = 51
	sprite_index = spr_golfwin
    image_index = 0
}
    global.combotime = 60
	global.pausecombotime = true
    obj_tv.alarm[1] = 75

