scr_commonenemy()
scr_scareenemy()
var targetplayer = nearest_player()
if (state == 106 && stunned > 100 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != 106)
    birdcreated = 0
if (state == 102 && y > targetplayer.y && (!scr_solid(x, (y - 1))))
    y -= choose(1, 1.2, 1.4)
if (state == 102 && y < targetplayer.y && (!scr_solid(x, (y + 1))))
    y += choose(1, 1.2, 1.4)
if (state == 106 && parry == 0)
    grav = 0.01
else
    grav = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (state != 109)
    depth = 0
//Heatbox
if (hitboxcreate == 0 && state == enemystates.enemyheat)
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_forkhitbox))
	{
        ID = other.id
		mask_index = spr_ancho_heat
		sprite_index = spr_ancho_heat
	}
}

if (x != targetplayer.x && state != enemystates.enemythrow && bombreset == 0)
{
    if (targetplayer.x > (x - 400) && targetplayer.x < (x + 400) && y <= (targetplayer.y + 20) && y >= (targetplayer.y - 20))
    {
        if state != enemystates.enemystun
		{
            image_index = 0
            image_xscale = (-sign((x - obj_player1.x)))
            state = enemystates.enemythrow
        }
    }	
}
if (state == 106 || state == 102)
    movespeed = 0
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


