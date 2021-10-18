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
    with (instance_create(x, y, obj_forkhitbox)) {
		sprite_index = spr_shrimp_punch
		mask_index = spr_shrimp_punch
        ID = other.id
	}
}
if state = 102 {
	state = 96
	sprite_index = walkspr
	movespeed = 7
}

    
var player = instance_nearest(x, y, obj_player)
if attack = 0 && sprite_index = spr_shrimp_idle
{
    if (player.x > (x - 300) && player.x < (x + 300) && y <= (player.y + 30) && y >= (player.y - 30))
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
    if (player.x > (x - 250) && player.x < (x + 250) && y <= (player.y + 25) && y >= (player.y - 25)) && bombreset = 0
    {
		image_index = 0
		sprite_index = spr_shrimp_punch
		state = "punch"
		movespeed = 9
		bombreset = 100
		flash = 1
		alarm[5] = 20
	}
}
else if state = 96 && shrimptype = 1 && attack = 1 && bombreset == 0
{
    if (player.x > (x - 300) && player.x < (x + 300) && y <= (player.y + 20) && y >= (player.y - 20)) && bombreset = 0
    {
		image_index = 0
		sprite_index = spr_shrimp_knife
		state = 97
		movespeed = 0
	}
} 
if state = "punch"
{
	bombreset = 100
	hsp = (movespeed * image_xscale)
	if floor(image_index) = image_number - 1
	{
		flash = 0
        state = 96
		attack = 1
		movespeed = 7
		sprite_index = walkspr
	}
}
if runbuffer > 0
runbuffer--
//Jump
if ((scr_solid(x + image_xscale,y)) && (!scr_slope_ext(x + sign(hsp), y))) && grounded && state != "punch" && state = 96 { 
	movespeed = 2
	vsp = -11
	state = 94
	bombreset = 50
	sprite_index = spr_shrimp_jumpstart
}
if sprite_index = spr_shrimp_jumpstart && floor(image_index) = image_number - 1
	sprite_index = spr_shrimp_jump
if grounded && (sprite_index = spr_shrimp_jump || sprite_index = spr_shrimp_jumpstart) {
	bombreset = 50
	movespeed = 0
	sprite_index = spr_shrimp_land
}
if floor(image_index) = image_number - 1 && sprite_index = spr_shrimp_land && state = 94
{
        state = 96
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

