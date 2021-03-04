switch state
{
    case 94:
        scr_enemy_idle()
        break
    case 96:
        scr_enemy_charge()
        break
    case 98:
        scr_enemy_turn()
        break
    case 102:
        scr_enemy_walk()
        break
    case 104:
        scr_enemy_land()
        break
    case 105:
        scr_enemy_hit()
        break
    case 106:
        scr_enemy_stun()
        break
    case 97:
        scr_pizzagoblin_throw()
        break
    case 109:
        scr_enemy_grabbed()
        break
    case 200:
        scr_enemy_shake()
        break
}
scr_commonenemy()
scr_scareenemy()
if state = 94 && sprite_index = scaredspr
{
	movespeed = 0
}
if (state == 106 && stunned > 40 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != 106)
    birdcreated = 0
if (hitboxcreate == 0 && state == "punch" && sprite_index = spr_shrimp_punch && obj_player.state != 91 && obj_player.state != 70)
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_forkhitbox))
        ID = other.id
}
if state = 102 {
	state = 96
	movespeed = 7
}
if (bombreset > 0)
    bombreset--
var player = instance_nearest(x, y, obj_player)
if attack = 0 && sprite_index = spr_shrimp_idle
{
    if (player.x > (x - 300) && player.x < (x + 300) && y <= (player.y + 40) && y >= (player.y - 40))
    {
        state = 96
        if (x != player.x)
            image_xscale = (-sign((x - player.x)))
		attack = 1
		movespeed = 7
		sprite_index = walkspr
    }
}
if state = 96 && shrimptype = 0 && attack = 1 && bombreset == 0
{
    if (player.x > (x - 100) && player.x < (x + 100) && y <= (player.y + 20) && y >= (player.y - 20)) && bombreset = 0
    {
		sprite_index = spr_shrimp_punch
		state = "punch"
		movespeed = 8
		bombreset = 50
	}
}
else if state = 96 && shrimptype = 1 && attack = 1 && bombreset == 0
{
    if (player.x > (x - 300) && player.x < (x + 300) && y <= (player.y + 20) && y >= (player.y - 20)) && bombreset = 0
    {
		sprite_index = spr_shrimp_knife
		state = 97
		movespeed = 0
	}
} 
if state = "punch"
{
	hsp = (movespeed * image_xscale)
	if floor(image_index) = image_number - 1
	{
		state = 96
		sprite_index = walkspr
		movespeed = 7
	}
}

//Jump
if (((scr_solid((x + 1), y) && image_xscale == 1) || (scr_solid((x - 1), y) && image_xscale == -1)) && (!place_meeting((x + sign(hsp)), y, obj_slope))) && grounded && state = 96 { 
	vsp = -8
	state = 94
	sprite_index = spr_shrimp_jumpstart
}
if sprite_index = spr_shrimp_jumpstart && floor(image_index) = image_number - 1
	sprite_index = spr_shrimp_jump
if grounded && (sprite_index = spr_shrimp_jump || sprite_index = spr_shrimp_jumpstart)
	sprite_index = spr_shrimp_land
if floor(image_index) = image_number -1 && sprite_index = spr_shrimp_land && state = 94
{
        state = 96
        if (x != player.x)
            image_xscale = (-sign((x - player.x)))
		attack = 1
		movespeed = 7
		sprite_index = walkspr	
}
//Bug
if sprite_index = spr_shrimp_knife && floor(image_index) = image_number - 1
{
	sprite_index = walkspr
}

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
if shrimptype = 0
	paletteselect = 0 
else
	paletteselect = 1

