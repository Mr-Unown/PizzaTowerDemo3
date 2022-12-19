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
	case 200:
        scr_applejim_bash()
        break
}
bashcooldown--
if state = 94
{
movespeed = 0	
}
if state = 200
{
movespeed = 5	
}
if bashcooldown = 0
{
sprite_index = spr_applejim_charge
state = 200
bashcooldown = 200
}
if (state == 98 && stunned > 40 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if hp = 0
{
instance_destroy()
}
if (state != 98)
    birdcreated = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (state != 101)
    depth = 0
	if instance_exists(obj_baddiethrow)
	{
	instance_destroy(obj_baddiethrow)
	}
	if instance_exists(obj_swordhitbox) || obj_slaphitbox
	{
	instance_destroy(obj_swordhitbox)
	instance_destroy(obj_slaphitbox)
	}