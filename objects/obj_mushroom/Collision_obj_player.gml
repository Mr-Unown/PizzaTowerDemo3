if (other.cutscene == 0 /*&& other.state != (84 << 0) && other.state != (95 << 0) && other.state != (157 << 0)*/)
{
    sprite_index = spr_bigmushroom_bounce
    if other.state == states.jump || other.state == states.normal
        other.sprite_index = other.spr_machfreefall
    image_index = 0
	if other.vsp > 0
    other.vsp = -other.vsp - .5
	else
	other.vsp = other.vsp - .5
    other.jumpstop = 1
	if other.sprite_index != other.spr_machfreefall
	mushroombouncevsp = -14
}