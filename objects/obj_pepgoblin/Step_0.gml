scr_commonenemy()
if (state == 106 && stunned > 100 && birdcreated == 0)
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
scr_scareenemy()

    
var player = (global.coop ? instance_nearest(x, y, obj_player) : obj_player1)	
if (x != player.x && state != 97 && player.state != states.breakdance && player.state != 2 && bombreset == 0 && grounded)
{
    if (player.x > (x - 80) && player.x < (x + 80) && y <= (player.y + 100) && y >= (player.y - 100))
    {
        if (state == 102)
        {
            image_index = 0
            sprite_index = spr_pepgoblin_kick
            image_xscale = (-sign((x - player.x)))
            state = 97
        }
    }
}

if (grounded && state == 97 && floor(image_index) == 3)
    vsp = -5
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


