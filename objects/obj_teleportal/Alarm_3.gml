with playerid2
{
	x = other.targetx
	y = other.targety
    state = other.player2state
    movespeed = other.player2movespeed
    grav = 0.5
	sprite_index = other.player2spriteindex
    image_index = other.player2imageindex
    freefallsmash = other.player2smash
	visible = true
	xscale = xscale * sign(other.xscale)
}
repeat (5)
{
   with (instance_create((targetx + random_range(-32, 32)), (targety + random_range(-32, 32)), obj_balloonpop))
      sprite_index = spr_shotgunimpact
}
global.pausecombotime = true
obj_tv.alarm[1] = 75	