with obj_player2
{
	global.pausecombotime = true
	obj_tv.alarm[1] = 75		
	x = other.targetx
	y = other.targety
	visible = true
	state = 73
    alarm[8] = 100
    alarm[7] = 50
	hurted = 1
    if (xscale == other.image_xscale)
            sprite_index = spr_hurtjump
    else
            sprite_index = spr_hurt
	with obj_tv {
        message = choose("OW!", "OUCH!", "OH!", "WOH!")
		chose = 0		
	}			
    movespeed = 1
    vsp = -5
	timeuntilhpback = 300
	grav = 0.5
}
repeat (3)
{
   with (instance_create((targetx + random_range(-32, 32)), (targety + random_range(-32, 32) - 40), obj_balloonpop))
      sprite_index = spr_shotgunimpact
}
instance_create(targetx,targety - 50 ,obj_handgrabber)