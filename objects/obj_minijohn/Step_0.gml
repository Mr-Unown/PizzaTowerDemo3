scr_commonenemy()
if (state == 106 && stunned > 100 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
//if (markedfordeath == 1 && markedfordeathbuffer <= 0 && thrown == 1)
//    instance_destroy()
//if (thrown == 0 || markedfordeath == 0)
//{
//    markedfordeath = 0
//    markedfordeathbuffer = 50
//}
//if (markedfordeath == 1)
//    markedfordeathbuffer--
//if (thrown == 1 && place_meeting((x + hsp), (y + vsp), obj_hallway))
//    markedfordeath = 1
if (state != 106)
    birdcreated = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if global.coop = true
	var targetplayer = instance_nearest(x,y, obj_player)
else
	var targetplayer = obj_player1	
if (state == 94 || state == 102)
{
    var playerposition = (x - targetplayer.x)
    state = 96
    movespeed = 7
    image_xscale = (-sign(playerposition))
    slide = ((-image_xscale) * (movespeed + 4))
}
if (hitboxcreate == 0 && state == 96) && targetplayer.instakillmove = false && targetplayer.state != states.frozen && targetplayer.state != states.handstandjump && targetplayer.state != states.kingknightroll
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_john_hitbox))
    {
        sprite_index = other.sprite_index
        ID = other.id
    }
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
        mask_index = other.sprite_index
        baddieID = other.id
        other.boundbox = 1
    }
}


