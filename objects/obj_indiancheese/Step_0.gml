switch state
{
    case 94:
        scr_enemy_idle()
        break
    case 96:
        scr_enemy_charge()
        break
    case 98:
        scr_enemy_turn()
        break
    case 102:
        scr_enemy_walk()
        break
    case 104:
        scr_enemy_land()
        break
    case 105:
        scr_enemy_hit()
        break
    case 106:
        scr_enemy_stun()
        break
    case 97:
        scr_pizzagoblin_throw()
        break
    case 109:
        scr_enemy_grabbed()
        break
    case 200:
        scr_enemy_shake()
        break
}
scr_commonenemy()
scr_scareenemy()
if (state == 106 && stunned > 40 && birdcreated == 0)
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
    jumptimer = 20
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


