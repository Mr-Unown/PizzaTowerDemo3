scr_commonenemy()
scr_scareenemy()
//Demo guys recreated code i think
/*
if (state == 106 && stunned > 60 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != 106)
    birdcreated = 0
if (state == 102 && y > ystart && (!scr_solid(x, (y - 1))))
    y--
if (state == 102 && y < ystart && (!scr_solid(x, (y + 1))))
    y++
if (state == 106 && parry == 0)
    grav = 0.5
else
    grav = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (state != 109)
    depth = 0
if bombreset > 0 && state = 102
    
if bombreset <= 0 && state = 102
{
    with (instance_create(x, y + 20, obj_ufoolive_teleportal))
        vsp = 2
    bombreset = 100
}
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
*/
//April build olive code
if (state == (enemystates.enemystun) && stunned > 100 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != enemystates.enemystun)
    birdcreated = 0
if (state == (enemystates.enemywalk) && y > ystart && (!scr_solid(x, (y - 1))))
    y--
if (state == (enemystates.enemywalk) && y < ystart && (!scr_solid(x, (y + 1))))
    y++
if (state == (enemystates.enemystun))
    grav = 0.5
else
    grav = 0
if (bombreset > 0 && state == (enemystates.enemywalk))
    bombreset--
var player = instance_nearest(x, y, obj_player)
if (player.x > (x - 200) && player.x < (x + 200) && player.y <= (y + 400) && player.y >= (y - 60))
{
    if (x != player.x && state != (enemystates.enemythrow) && bombreset <= 0)
    {
        if (state == (enemystates.enemywalk) || state == (enemystates.enemyidle))
        {
            sprite_index = spr_ufolive_scared
            image_index = 0
            state = (enemystates.enemythrow)
        }
    }
}
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (state == (enemystates.enemythrow) || state == (98 << 0))
{
    hsp = 0
    vsp = 0
}
if (state != (enemystates.enemygrabbed))
    depth = 0
scr_scareenemy()
if (state == (enemystates.enemywalk))
{
    if (turntimer > 0)
        turntimer--
}
if (turntimer <= 0)
{
    image_xscale *= -1
    turntimer = 600
}
if (state != (enemystates.enemystun))
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

