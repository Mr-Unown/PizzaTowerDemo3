scr_commonenemy()
scr_scareenemy()
if (state == 106 && stunned > 60 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != 106)
    birdcreated = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
var player = instance_nearest(x, y, obj_player)
if (state == 102 && sprite_index == walkspr && sprite_index != spr_indiancheese_scared)
{
    if (player.x > (x - 400) && player.x < (x + 400) && y <= (player.y + 60) && y >= (player.y - 60))
    {
        state = 94
        sprite_index = spr_indiancheese_spotted
        if (x != player.x)
            image_xscale = (-sign((x - player.x)))
        jumpertime = 20
        pogger = 100
        vsp = -5
    }
}
if (jumpertime > 0 && state == 94 && grounded && sprite_index == spr_indiancheese_spotted)
    jumpertime--
if (jumpertime == 0 && state == 94 && grounded && sprite_index == spr_indiancheese_spotted)
{
    movespeed = 4
    vsp = -11
    sprite_index = spr_indiancheese_jump
    image_index = 0
    state = 102
    jumpertime = 20
    instance_create(x, y, obj_highjumpcloud2)
}
if ((!grounded) && sprite_index == spr_indiancheese_jump && floor(image_index) == (image_number - 1))
    image_speed = 0
else if (image_speed == 0)
    image_speed = 0.35
if ((!grounded) && sprite_index == spr_indiancheese_jump && vsp > 0)
    sprite_index = spr_indiancheese_land
if (grounded && sprite_index == spr_indiancheese_land)
{
    movespeed = 1
	with instance_create(x, y, obj_landcloud)
	{
		playerid = other.id
		image_xscale = other.image_xscale
	}	
    sprite_index = spr_indiancheese_walk
}
if sprite_index = spr_indiancheese_walk {
	movespeed = 1	
}
if (hitboxcreate == 0 && state == 102)
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_forkhitbox))
        ID = other.id
}
if (state != 109)
    depth = 0
if (state != 106)
    thrown = 0
if (boundbox == 0)
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index
        mask_index = other.sprite_index
        baddieID = other.id
        other.boundbox = 1
    }
}


