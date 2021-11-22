scr_commonenemy()
if (state == 106 && stunned > 100 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
//Treasure

var targetplayer = nearest_player()
if targetplayer.x > x - 400 && targetplayer.x < x + 400 && y <= targetplayer.y + 60 && y >= targetplayer.y - 60
{
    if (state == enemystates.enemyidle || state == enemystates.enemywalk) && sprite_index != spr_treasureguy_popout
        activated = true
}
if activated == false && (state == enemystates.enemyidle || state == enemystates.enemywalk)
{
	if sprite_index == spr_treasureguy_popout 
	{
		if animation_end()
			sprite_index = spr_treasureguy_idle		
		activated = false;
	}
	else
		sprite_index = spr_treasureguy_idle
}
if activated == true && (state == enemystates.enemyidle || state == enemystates.enemywalk) && sprite_index != spr_treasureguy_escapestart
{
    movespeed = 0
	if x != targetplayer.x
		image_xscale = -sign(x - targetplayer.x)
    image_index = 0
    sprite_index = spr_treasureguy_escapestart
}
if sprite_index == spr_treasureguy_escapestart && animation_end()
{
    image_xscale *= -1
    sprite_index = spr_treasureguy_escape
    state = enemystates.enemycharge
    movespeed = 10
    with (instance_create(x, y, obj_jumpdust))
        image_xscale = other.image_xscale
}
//Funny Topping Trail
var player = focused_player()
if state == enemystates.enemycharge && trailbuffer > 0
    trailbuffer--
if (trailbuffer <= 0)
{
	with instance_create(x, (y + 17), obj_toppingtrail)
	{
		playerid = player.id
	}
	trailbuffer = 6;
}





if (state != 106)
    birdcreated = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
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