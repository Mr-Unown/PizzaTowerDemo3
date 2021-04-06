if global.geromefollowing = true 
{
if audio_is_playing(sfx_collecttopping)
    audio_stop_sound(sfx_collecttopping)
scr_soundeffect(5)
with other.id
{
    collectscore = (collectscore + 25)
    if (character == "V") && vigihealth < 250
        vigihealth += 15
}
with obj_gerome {	
if point_distance(x,y,other.x,other.y) >= 464 {
	repeat (3)
	with (instance_create((other.x + random_range(-32, 32)), (other.y + random_range(-32, 32)), obj_balloonpop))
		sprite_index = spr_shotgunimpact
}
x = other.x
y = other.y
sprite_index = spr_gerome_mop
image_index = 0

}
if global.combotime < 60
global.combotime += 10
else
global.combotime = 60
global.pausecombotime = true
obj_tv.alarm[1] = 75
with instance_create(x, y, obj_smallnumber)
    number = "25"
repeat 3
	instance_create(x + random_range(-3,3),y + random_range(-3,3), obj_collecteffect)	
instance_destroy()
}