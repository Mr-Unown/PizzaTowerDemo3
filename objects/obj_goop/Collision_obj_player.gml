if global.geromefollowing = true 
{
	if other.character != "PZ"
	{
		if audio_is_playing(sfx_collecttopping)
		audio_stop_sound(sfx_collecttopping)
		scr_soundeffect(sfx_collecttopping)
	}
	else
	{
		if audio_is_playing(sfx_PZcollecttopping)
		audio_stop_sound(sfx_PZcollecttopping)
		scr_soundeffect(sfx_PZcollecttopping)
	}
with other.id
{
    collectscore = (collectscore + (10 + (global.stylethreshold * 2)))
    if (character == "V") && vigihealth < 250
        vigihealth += 15
}
with obj_gerome {	
if point_distance(x,y,other.x,other.y) >= 464 
{
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
    number = "10"
instance_create(x ,y, obj_collecteffect)	
repeat (6)
{
        with instance_create(x, y, obj_balloonpop)
            sprite_index = spr_shotgunimpact
}

instance_destroy()
}