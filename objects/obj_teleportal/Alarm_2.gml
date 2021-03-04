with playerid
{
	x = other.targetx
	y = other.targety
    state = other.playerstate
    movespeed = other.playermovespeed
    grav = 0.5
	sprite_index = other.playerspriteindex
    image_index = other.playerimageindex
    freefallsmash = other.playersmash
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