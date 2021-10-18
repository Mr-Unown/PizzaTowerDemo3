scr_commonenemy()
scr_scareenemy()
if (state == 106 && stunned > 100 && birdcreated == 0)
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


