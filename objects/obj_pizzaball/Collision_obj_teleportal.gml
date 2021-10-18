with other
{
	repeat (5)
	{
		with (instance_create((other.x + random_range(-100, 100)), (other.y + random_range(-100, 100)), obj_balloonpop))
			sprite_index = spr_shotgunimpact
	}	
	other.x = targetx
	other.y = targety
    other.state = 100
    other.thrown = 1
    other.vsp = -3
    other.hsp = 0
    other.movespeed = abs(other.hsp)
    other.hit = 0
    other.angle = 0
    other.poweringup = 0
    other.sprite_index = spr_pizzaball_stun
    other.image_index = 0
    other.image_speed = 0.35	
	other.image_xscale = other.image_xscale * sign(xscale)
	repeat (5)
	{
		with (instance_create((targetx + random_range(-100, 100)), (targety + random_range(-100, 100)), obj_balloonpop))
			sprite_index = spr_shotgunimpact
	}	
}