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
idlespr = spr_kentukykenny_idle
stunfallspr = spr_kentukykenny_stun
walkspr = spr_kentukykenny_walk
stunspr = spr_kentukykenny_stun
grabbedspr = spr_kentukykenny_stun
var player = instance_nearest(x, y, obj_player)
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (state != 109)
    depth = 0
if (state != 106)
    thrown = 0

    
if (x != player.x && state != 97 && bombreset == 0 && grounded)
{
    if (player.x > (x - 400) && player.x < (x + 400) && y <= (player.y + 20) && y >= (player.y - 20))
    {
        if (state == 102 || state == 94)
        {
            sprite_index = spr_kentukykenny_throw
            image_index = 0
            image_xscale = (-sign((x - player.x)))
            state = 97
        }
    }
}
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


