with instance_create(x,y, obj_baddie_dead)
{
	vsp = -6
    hsp = 0
	canrotate = true
	rotatedirection = choose(-1,1)
    rotatevalue = irandom_range(-20,20)
	grav = 0.3
	sprite_index = spr_noisebot_dead
	
}
with obj_lighting
	{
		can_draw = true;
		targetdarkness = 0.25;
	}
scr_soundeffect(sfx_stompenemy)
