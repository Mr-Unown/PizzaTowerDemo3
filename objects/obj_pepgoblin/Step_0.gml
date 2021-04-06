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
if (bombreset > 0)
    bombreset--
if (x != obj_player1.x && state != 97 && obj_player.state != 2 && bombreset == 0 && grounded)
{
    if (obj_player1.x > (x - 80) && obj_player1.x < (x + 80) && y <= (obj_player1.y + 100) && y >= (obj_player1.y - 100))
    {
        if (state == 102)
        {
            image_index = 0
            sprite_index = spr_pepgoblin_kick
            image_xscale = (-sign((x - obj_player.x)))
            state = 97
        }
    }
}
if instance_exists(obj_player2)
{
    if (x != obj_player2.x && state != 97 && bombreset == 0 && grounded)
    {
        if (obj_player2.x > (x - 100) && obj_player2.x < (x + 100) && y <= (obj_player2.y + 100) && y >= (obj_player2.y - 100))
        {
            if (state == 102 || state == 94)
            {
                image_index = 0
                sprite_index = spr_pepgoblin_kick
                image_xscale = (-sign((x - obj_player.x)))
                state = 97
            }
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


