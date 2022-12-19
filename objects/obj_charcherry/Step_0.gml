movespeed += 0.2
switch state
{
    case 86:
        scr_enemy_idle()
        break
    case 90:
        scr_enemy_turn()
        break
    case 94:
        scr_enemy_walk()
        break
    case 96:
        scr_enemy_land()
        break
    case 97:
        scr_enemy_hit()
        break
    case 98:
        scr_enemy_stun()
        break
    case 89:
        scr_pizzagoblin_throw()
        break
    case 101:
        scr_enemy_cherrywait()
        break
	case 110:
        scr_enemy_cherrywait()
        break
}
if global.panic = 0
{
hsp = 0
movespeed = 0
vsp = 0
}
if (state == 98 && stunned > 40 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != 98)
    birdcreated = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
	if x != obj_player.x && image_xscale != -sign(x - obj_player.x) && state = 94
    {
        movespeed = 2
        image_xscale = -sign(x - obj_player.x)
        momentum = ((-image_xscale) * (movespeed + 4))
    }
		hsp = ((image_xscale * movespeed) + momentum)
		if (momentum > 0)
        {
		momentum -= 0.1
		}
			if (momentum <= 0)
			{
			momentum += 0.1
			}
if movespeed > 12
{
movespeed = 12
}
	if movespeed < -12
	{
	movespeed = -12
	}
if state = 98 || state = 101 && global.panic = 1
{
instance_destroy()
}