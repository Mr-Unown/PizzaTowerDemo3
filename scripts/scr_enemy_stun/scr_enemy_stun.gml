function scr_enemy_stun() {
	/*var vdirection = sign(hsp)
	if (object_index == obj_ninja)
	    attack = 1
	stunned--
	if (sprite_index != spr_bigcheese_land && sprite_index != spr_bigcheese_fall)
	    sprite_index = stunfallspr
	image_speed = 0.35
	if ((grounded || (grounded && (!place_meeting(x, y, obj_platform)))) && vsp > 0)
	{
	    if (thrown == 1 && hp <= 0) || (dying = true)
		{
			initialvsp = irandom_range(5,-20)
			initialhsp = irandom_range(5,10) * choose(-1,1)
	        instance_destroy()
		}
	    if (hp > 0 && object_index == obj_bigcheese && sprite_index == spr_bigcheese_fall)
	        sprite_index = spr_bigcheese_land
	    thrown = 0
	    grav = 0.5
	    hsp = 0
	}
	if place_meeting(x, (y + 1), obj_railh)
	    hsp = -5
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = 5
	if scr_solid(x - image_xscale,y) && !place_meeting((x - image_xscale), y, obj_destructibles)
	{
	    with (instance_create(x, y, obj_bulletimpact))
	        image_xscale = (-other.image_xscale)
	    if (thrown == 1 && hp <= 0 || dying = true) 
		{
			initialvsp = irandom_range(15,-15)
			initialhsp = irandom_range(5,15) * -vdirection
	        instance_destroy()
		}
	    if (thrown == 1 && hp > 0 && object_index == obj_bigcheese && sprite_index == stunfallspr)
	        sprite_index = spr_bigcheese_fall
	    thrown = 0
	    grav = 0.5
	    image_xscale *= -1
	    hsp = ((-image_xscale) * 4)
	}
	if (object_index == obj_bigcheese)
	{
	    if (thrown == 1)
	    {
	        if ((!grounded) && vsp > 0 && hp > 0)
	            sprite_index = spr_bigcheese_fall
	    }
	    if (floor(image_index) == (image_number - 1) && sprite_index == spr_bigcheese_land)
	        sprite_index = stunfallspr
	}
	if (floor(image_index) == (image_number - 1) && stunned < 0)
	{
	    if (object_index != obj_ancho && object_index != obj_ufoolive && object_index != obj_pizzaboy)
	        vsp = -4
	    else
	        vsp = 0
	    if (object_index == obj_spitcheese)
	    {
	        image_index = 0
	        sprite_index = idlespr
	        state = 102
	    }
	    else if (object_index == obj_pizzice)
	    {
	        state = 96
	        image_index = 0
	        sprite_index = walkspr
	    }
	    else if (object_index == obj_minijohn)
	    {
			movespeed = 7
			slide = ((-image_xscale) * (movespeed + 4))
	        state = 96
	        image_index = 0
	        sprite_index = walkspr
	    }
	    else if (object_index == obj_ninja)
	    {
	        state = 96
	        image_index = 0
	        sprite_index = walkspr
	    }
	    else if (object_index == obj_trash)
	    {
	        state = 94
	        image_index = 0
	        sprite_index = idlespr
	    }
	    else if (object_index == obj_rancher)
	    {
	        state = 102
	        image_index = 0
	        sprite_index = idlespr
	    }
	    else
	    {
	        image_index = 0
	        sprite_index = walkspr
	        state = 102
	        movespeed = 1
	    }
	}*/
	



switch hp
    {
        case -1:
            grav = 1.1
            break
        case -2:
            grav = 1.3
		case -3:
            grav = 1.5
            break
    }

    if (object_index == obj_ninja)
        attack = 1
    switch global.stylethreshold
    {
        case 0:
            stunned -= 0.5
            break
        case 1:
            stunned -= 0.65
            break
        case 2:
            stunned -= 0.8
            break
        case 3:
            stunned -= 1
    }

    if (stuntouchbuffer > 0) && grounded
        stuntouchbuffer--
	if grounded
        sprite_index = stunfallspr
	else if hittinged = true
		sprite_index = spr_dead
    image_speed = 0.35
    if ((grounded || (grounded && (!place_meeting(x, y, obj_platform)))) && vsp > 0)
    {
        if (thrown == 1 && markedfordeath && grounded && hp < 1)
            instance_destroy()
        thrown = 0
        grav = 0.5
        hsp = 0
    }
    if (hithsp != 0 && place_meeting((x - image_xscale), y, obj_solid) && (!place_meeting((x - image_xscale), y, obj_destructibles)))
    {
        if (markedfordeath && grounded && hp < 1)
            instance_destroy()
        thrown = 0
        grav = 0.5
        image_xscale *= -1
        hsp = ((-image_xscale) * 4)
    }
    if (stunned <= 0 && grounded)
    {
        vsp = 0
        image_index = 0
        sprite_index = walkspr
        state = enemystates.enemywalk
    }
}
