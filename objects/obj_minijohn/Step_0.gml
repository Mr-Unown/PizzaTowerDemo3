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
if (state == 106 && stunned > 100 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (markedfordeath == 1 && markedfordeathbuffer <= 0 && thrown == 1)
    instance_destroy()
if (thrown == 0 || markedfordeath == 0)
{
    markedfordeath = 0
    markedfordeathbuffer = 50
}
if (markedfordeath == 1)
    markedfordeathbuffer--
if (thrown == 1 && place_meeting((x + hsp), (y + vsp), obj_hallway))
    markedfordeath = 1
if (state != 106)
    birdcreated = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (state == 94 || state == 102)
{
    var targetplayer = obj_player1
    if (obj_player1.spotlight == 0)
        targetplayer = 4
    var playerposition = (x - targetplayer.x)
    state = 96
    movespeed = 7
    image_xscale = (-sign(playerposition))
    slide = ((-image_xscale) * (movespeed + 4))
}
if (hitboxcreate == 0 && state == 96)
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_john_hitbox))
    {
        sprite_index = other.sprite_index
        ID = other.id
    }
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


