scr_commonenemy()
if (state == 106 && stunned > 100 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
//Bandito Stuff
var player = nearest_player()
if player.x > x - 400 && player.x < x + 400 && y <= player.y + 60 && y >= player.y - 60
{
    if state == enemystates.enemyidle || state == enemystates.enemywalk
        activated = true
}
if activated == false && (state == enemystates.enemyidle || state == enemystates.enemywalk)
    sprite_index = spr_banditochicken_sleep
if activated == true && (state == enemystates.enemyidle || state == enemystates.enemywalk) && sprite_index != spr_banditochicken_wake && sprite_index != spr_banditochicken_scared
{
    movespeed = 0
	if x != player.x
		image_xscale = -sign(x - player.x)
    image_index = 0
    sprite_index = spr_banditochicken_wake
}
if sprite_index == spr_banditochicken_wake && animation_end()
{
    image_xscale *= -1
    sprite_index = spr_banditochicken_chase
    state = enemystates.enemycharge
    movespeed = 10
    with (instance_create(x, y, obj_jumpdust))
        image_xscale = other.image_xscale
}
if state == enemystates.enemycharge && bonebuffer > 0
    bonebuffer--
if (bonebuffer <= 0)
{
    if global.heatmeter < 4
    {
        with (instance_create(x, y, obj_banditochicken_projectile))
        {
            vsp = -9
            image_xscale = other.image_xscale
            hsp = ((-image_xscale) * 4)
        }
    }
    else
    {
        flash = 1
		with (instance_create(x,y,obj_heataftereffectspawner))
		{
			image_index = other.image_index
			sprite_index = other.sprite_index
			image_xscale = other.image_xscale				
		}
        with (instance_create(x, y, obj_banditochicken_dynamite))
        {
            sprite_index = spr_banditodynamite
            vsp = -9
            image_xscale = other.image_xscale
            hsp = ((-image_xscale) * 4)
        }
    }
    bonebuffer = 100
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


