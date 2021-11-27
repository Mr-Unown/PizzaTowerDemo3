scr_commonenemy()
if (state == 106 && stunned > 60 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
//Treasure
var targetplayer = nearest_player()
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
	image_speed = 0.35
}
if targetplayer.x > x - 400 && targetplayer.x < x + 400 && y <= targetplayer.y + 96 && y >= targetplayer.y - 96
{
    if sprite_index != spr_treasureguy_popout && (state == enemystates.enemyidle || state == enemystates.enemywalk)
        activated = true
}
if activated == true && sprite_index != spr_treasureguy_escapestart && (state == enemystates.enemyidle || state == enemystates.enemywalk)
{
    movespeed = 0
	if x != targetplayer.x
		image_xscale = sign(x - targetplayer.x)
    image_index = 0
    sprite_index = spr_treasureguy_escapestart
	image_speed = 0.35
}
if sprite_index == spr_treasureguy_escapestart && animation_end()
{
	movespeed = 0
    sprite_index = spr_treasureguy_escape
    state = enemystates.enemycharge
    with (instance_create(x, y, obj_jumpdust))
        image_xscale = other.image_xscale
}
//Funny Topping Trail
var player = focused_player()
if state == enemystates.enemycharge && trailbuffer > 0
	trailbuffer -= 0.85
if (trailbuffer <= 0)
{
	with instance_create(x - (16 * image_xscale), (y + 17), obj_toppingtrail)
	{
		playerid = player.id
		toppingalpha = 0.65
	}
	trailbuffer = 10;
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