scr_commonenemy()

if state == 110
{
        if (image_index > (image_number - 1))
        {
            hsp = (image_xscale * startmachspeed)
            sprite_index = spr_robot_mach
            image_index = 0
            state = 397
        }
}
if state == 397
{
	hsp = approach(hsp, (image_xscale * machspeed), 0.5)
	if global.heatmeter > 4
	with (instance_create(x,y,obj_heataftereffectspawner))
			{
				image_index = other.image_index
				sprite_index = other.sprite_index
				image_xscale = other.image_xscale				
			}
        if (place_meeting((x + sign(hsp)), y, obj_solid) && (!place_meeting((x + sign(hsp)), y, obj_slope)))
        {
            state = enemystates.enemystun
            stunned = 100
            vsp = -4
            hsp = ((-image_xscale) * 2)
        }
}
if state == 111
{
if (image_index > 8)
            hsp = (image_xscale * tacklespeed)
        if (image_index > (image_number - 1))
        {
            state = enemystates.enemywalk
            sprite_index = walkspr
        }
        /*if (place_meeting((x + sign(hsp)), y, obj_solid) && (!place_meeting((x + sign(hsp)), y, obj_slope)))
        {
            state = enemystates.enemystun
            stunned = 100
            vsp = -8
            hsp = ((-image_xscale) * 5)
        }*/
	
}
if state == 112
{
	hsp = 0
        if (image_index > (image_number - 1))
        {
            state = enemystates.enemywalk
            sprite_index = walkspr
        }
}
if (state == 106 && stunned > 60 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != 106)
    birdcreated = 0
scr_scareenemy()
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (state != 109)
    depth = 0
if (state != 106)
    thrown = 0


targetplayer = nearest_player()
if (x != targetplayer.x && state != enemystates.enemythrow && bombreset == 0)
{
    if (targetplayer.x > (x - 400) && targetplayer.x < (x + 400) && y <= (targetplayer.y + 20) && y >= (targetplayer.y - 20))
    {
        if (state == enemystates.enemywalk || state == enemystates.enemyidle)
        {
            image_index = 0
            image_xscale = (-sign((x - targetplayer.x)))
            state = choose(110, 111, 112)
            bombreset = 100
            switch state
            {
                case 110:
                    sprite_index = spr_robot_machstart
                    image_index = 0
                    image_speed = 0.6
                    hsp = 0
                    break
                case 111:
                    sprite_index = spr_robot_tackle
                    image_index = 0
                    image_speed = 0.6
                    hsp = 0
                    break
                case 112:
                    sprite_index = spr_robot_slap
                    image_index = 0
                    image_speed = 0.6
                    hsp = 0
                    break
            }

        }
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
if (hitboxcreate = 0 && state == 397 || (state == 112 && image_index > 13) || (state == 111 && image_index > 8))
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_forkhitbox))
	    ID = other.id
}	
if (sprite_index = stunspr || sprite_index = walkspr || sprite_index = idlespr)
{
hitboxcreate = 0
if instance_exists(obj_forkhitbox)
instance_destroy(obj_forkhitbox)
}
if obj_lighting.visible = true
paletteselect = 2
image_speed = 0.35;

