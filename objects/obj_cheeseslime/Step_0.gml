scr_commonenemy()
if (state == 106 && stunned > 100 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
#region Heat attack
var player = (global.coop = false ? obj_player1 : instance_nearest(x,y,obj_player));

if (x != player.x && player.state != 27 && state != enemystates.enemyheat && grounded && heatreset <= 0 && grounded) && global.heatmeter >= 4
{
    if (player.x > (x - 350) && player.x < (x + 350) && y <= (player.y + 25) && y >= (player.y - 25))
    {
        if (state == 102 || state == 94)
        {
            image_index = 0
            image_xscale = (-sign((x - player.x)))
			sprite_index = spr_cheeseslime_heatstart
			movespeed = 0
			heatreset = 100
			flash = true
			state = enemystates.enemyheat
			with (instance_create(x,y,obj_heataftereffectspawner))
			{
				image_index = other.image_index
				sprite_index = other.sprite_index
				image_xscale = other.image_xscale				
			}

        }
    }
}
#endregion


if (hitboxcreate == 0 && state == enemystates.enemyheat)
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_forkhitbox))
        ID = other.id
}



if (state != 106)
    birdcreated = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
scr_scareenemy()
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


