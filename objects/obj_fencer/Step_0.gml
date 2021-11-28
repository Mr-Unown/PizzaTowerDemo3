scr_commonenemy()
if (state == 106 && stunned > 60 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != 106)
    birdcreated = 0
#region Heat attack
var player = (global.coop = false ? obj_player1 : instance_nearest(x,y,obj_player));

if (x != player.x && player.state != 27 && state != enemystates.enemyheat && grounded && heatreset <= 0 && grounded) && global.heatmeter >= 4
{
    if (player.x > (x - 350) && player.x < (x + 350) && y <= (player.y + 25) && y >= (player.y - 25))
    {
        if (state == 102 || state == enemystates.enemycharge || state == 94)
        {
			vsp = 0
            image_index = 0
            image_xscale = (-sign((x - player.x)))
			sprite_index = spr_fencer_heatstart
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
scr_scareenemy()
if (x != obj_player1.x && grounded)
{
    if (obj_player1.x > (x - 400) && obj_player1.x < (x + 400) && y <= (obj_player1.y + 20) && y >= (obj_player1.y - 20))
    {
        if (state == 102 && charging == 0)
        {
            with (instance_create(x, y, obj_forkhitbox))
                ID = other.id
            charging = 1
            state = 96
            movespeed = 5
            vsp = -7
            sprite_index = spr_fencer_chargestart
        }
    }
}
if instance_exists(obj_player2)
{
    if (x != obj_player2.x && grounded)
    {
        if (obj_player2.x > (x - 400) && obj_player2.x < (x + 400) && y <= (obj_player2.y + 20) && y >= (obj_player2.y - 20))
        {
            if (state == 102 && charging == 0)
            {
                with (instance_create(x, y, obj_forkhitbox))
                    ID = other.id
                charging = 1
                state = 96
                movespeed = 5
                vsp = -7
                sprite_index = spr_fencer_chargestart
            }
        }
    }
}
if (state == 106 || state == 102)
{
    charging = 0
    movespeed = 0
}
if (sprite_index == spr_fencer_chargestart && floor(image_index) == (image_number - 1))
    sprite_index = spr_fencer_charge
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (hitboxcreate == 0 && (state == enemystates.enemyheat||state == 102))
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_forkhitbox))
        ID = other.id
}
if (state != 109)
    depth = 0
if (state != 106)
    thrown = 0
if (boundbox == 0)
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index
        baddieID = other.id
        other.boundbox = 1
    }
}


