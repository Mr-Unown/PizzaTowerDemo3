scr_commonenemy()
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
if (state != enemystates.enemychase && image_alpha >= 1)
	scr_scareenemy()
if (state != 109)
    depth = 0
if (state != 106)
    thrown = 0
if (bombreset == 0 && state == 102)
{
    attacking = 0
    targetplayer = (global.coop ? instance_nearest(x, y, obj_player) : obj_player1)
    if (targetplayer.x > (x - threshold_x) && targetplayer.x < (x + threshold_x) && y <= (targetplayer.y + threshold_y) && y >= (targetplayer.y - threshold_y))
    {
        attacking = 1
        pos = sign((x - targetplayer.x))
        state = enemystates.enemychase
        fade = 1
    }
}
if (state == enemystates.enemychase)
{
    if fade
    {
        if (image_alpha > 0)
        {
            if (hsp < -0.2 || hsp > 0.2)
                hsp *= 0.5
            image_alpha -= fadeout_time
        }
        else if (image_alpha <= 0)
        {
            x = targetplayer.x
            y = targetplayer.y
            if (pos != 0 && (!scr_solid((x + (pos * attack_offset)), y)))
            {
                x = (targetplayer.x + (pos * attack_offset))
                if place_meeting(x, y, obj_pickle)
                {
                    if (!scr_solid((x + 32), y))
                        x += 32
                    else if (!scr_solid((x - 32), y))
                        x -= 32
                }
            }
            if (!scr_solid(x, (y + 1)))
            {
                var yy = y
                var ground = 0
                var i = 1
                while (i < ground_check)
                {
                    if scr_solid(x, (y + i))
                    {
                        ground = 1
                        i--
                        yy = (y + i)
                        break
                    }
                    else
                    {
                        i++
                        continue
                    }
                }
                if ground
                    y = yy
            }
            fade = 0
        }
    }
    else
    {
        if (image_alpha < 1)
            image_alpha += fadein_time
        if (image_alpha >= 1)
        {
            image_alpha = 1
            image_index = 0
            sprite_index = spr_pickle_attack
            var old_xscale = image_xscale
            image_xscale = (-sign((x - targetplayer.x)))
            if (image_xscale == 0)
                image_xscale = old_xscale
            state = 97
            }
        }
    }
invincible = attacking
if (state == 94)
{
    if (scarebuffer > 0 && attacking)
    {
        image_alpha = 0.8
        invincible = 1
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