scr_commonenemy()
switch state
{
    case 9999:
        if (!grounded)
            sprite_index = spr_ufogrounded_fall
        if (sprite_index != spr_ufogrounded_fall && sprite_index != spr_ufogrounded_land)
        {
            invincible = 0
            scr_enemy_walk()
        }
        else if (sprite_index == spr_ufogrounded_fall)
        {
            hsp = 0
            if grounded
            {
                sprite_index = spr_ufogrounded_land
                image_index = 0
            }
        }
        else
        {
            if (image_index > 11)
                hsp = sign(image_xscale)
            if (floor(image_index) == (image_number - 1))
            {
                sprite_index = spr_ufogrounded_walk
                invincible = 0
            }
        }
        break
}

if (state != 9999)
    invincible = 0
if (state == enemystates.enemystun && stunned > 100 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != enemystates.enemystun)
    birdcreated = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
scr_scareenemy()
var targetplayer = nearest_player();
if (x != targetplayer.x && state != enemystates.enemythrow && bombreset <= 0 && grounded)
{
    if (targetplayer.x > (x - 400) && targetplayer.x < (x + 400) && y <= (targetplayer.y + 20) && y >= (targetplayer.y - 20))
    {
        if (state == (9999) || state == enemystates.enemyidle)
        {
            sprite_index = spr_ufogrounded_shoot
            image_index = 0
            image_xscale = (-sign((x - targetplayer.x)))
            state = enemystates.enemythrow
			
        }
    }
}
if (state != enemystates.enemygrabbed)
    depth = 0
if (state != enemystates.enemystun)
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
