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
if (state != 109)
    depth = 0
if (state != 106)
    thrown = 0

    
var targetplayer = instance_nearest(x, y, obj_player)
if (x != targetplayer.x && state != 97 && bombreset == 0 && grounded && targetplayer.state != 73 && targetplayer.cutscene == 0)
{
    if (targetplayer.x > (x - 400) && targetplayer.x < (x + 400) && y <= (targetplayer.y + 20) && y >= (targetplayer.y - 20))
    {
        if (state == 102 || state == 94)
        {
            sprite_index = spr_ranch_shoot
            image_index = 0
            image_xscale = (-sign((x - targetplayer.x)))
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


