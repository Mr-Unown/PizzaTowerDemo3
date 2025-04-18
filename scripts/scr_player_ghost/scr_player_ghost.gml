// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_ghost()
{
    move = (key_right + key_left)
    if (sprite_index != spr_ghostend && sprite_index != spr_ghostdash)
        hsp = (movespeed * move)
    if (sprite_index == spr_ghostdash)
        hsp = (xscale * 12)
    if (dir != xscale)
    {
        dir = xscale
        movespeed = 2
        facehurt = 0
    }
    if (sprite_index != spr_ghostdash)
    {
        if (vsp > 5 && (!key_down))
            vsp = 5
        else if (vsp > 10 && key_down)
            vsp = 10
    }
    image_speed = 0.35
    if (sprite_index != spr_ghostend && sprite_index != spr_ghostdash)
    {
		grav = 0.25
        if key_jump
        {
            vsp = -8
            image_index = 0
            sprite_index = spr_ghostjump
        }
    }
    if (!place_meeting(x, y, obj_ghostwall) && sprite_index != spr_ghostend)
        image_alpha = approach(image_alpha, 1, .1)
    if (scr_solid_player(x, (y + 1)) && sprite_index != spr_ghostend)
    {
        vsp = -5
        GamepadSetVibration((object_index == obj_player1 ? 0 : 1), 0.1, 0.1, 0.1)
    }
    if (sprite_index == spr_ghostjump && floor(image_index) == (image_number - 1))
        sprite_index = spr_ghostidle
    if (place_meeting(x, y, obj_tombstone) && sprite_index != spr_ghostend)
    {
        vsp = 10
        image_alpha = 1
        hsp = 0
        image_index = 0
        grav = 0.5
        movespeed = 0
        sprite_index = spr_ghostend
        with (instance_place(x, y, obj_tombstone))
        {
            other.x = x
            other.y = y
        }
    }
    if (sprite_index == spr_ghostend && floor(image_index) == (image_number - 1))
        state = (0 << 0)
    if (move != 0 && sprite_index != spr_ghostend && sprite_index != spr_ghostdash)
        xscale = move
    if (key_attack && sprite_index == spr_ghostidle)
    {
        with (instance_create(x, y, obj_jumpdust))
            image_xscale = other.xscale
        sprite_index = spr_ghostdash
        vsp = 0
        grav = 0
        image_index = 0
    }
    if (sprite_index == spr_ghostdash && (!key_attack))
    {
        sprite_index = spr_ghostidle
        grav = 0.25
    }
    if (move != 0)
    {
        if (movespeed < 8)
            movespeed += 0.3
        else if (floor(movespeed) == 8)
            movespeed = 8
    }
    else
        movespeed = 0
    if (movespeed > 8)
        movespeed -= 0.1
	//Possess Baddies
	if sprite_index = spr_ghostdash && place_meeting(x,y,obj_forknight)
	{
		var possessedID = obj_forknight.id
		state = states.forknight
		sprite_index = spr_forknight_idle
		grav = 0.5;
		instance_deactivate_object(possessedID)
		with (instance_create((x + random_range(-5, 5)), (y + random_range(-5, 5)), obj_balloonpop))
		{
			image_speed = 0.35
			sprite_index = spr_bigpoofclouds
			image_angle = choose(0,90,180,270)
		}			
	}
	if sprite_index = spr_ghostdash && place_meeting(x,y,obj_indiancheese)
	{
		var possessedID = obj_indiancheese.id
		state = states.indiancheese
		sprite_index = spr_indiancheese_walk
		grav = 0.5;
		instance_deactivate_object(possessedID)
		with (instance_create((x + random_range(-5, 5)), (y + random_range(-5, 5)), obj_balloonpop))
		{
			image_speed = 0.35
			sprite_index = spr_bigpoofclouds
			image_angle = choose(0,90,180,270)
		}			
	}
    return;
}