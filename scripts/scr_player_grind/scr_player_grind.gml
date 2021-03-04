vsp = 0
machhitAnim = 0
crouchslideAnim = 1
hsp = (xscale * movespeed)
if movespeed < 6
{
	movespeed += 0.5
}
else if (movespeed > 11) {
    movespeed -= 0.1
}
if (!grinding)
    state = 70
if key_jump
{
	if movespeed <= 6 {
		state = 70		
	}
	else
		state = 91
    vsp = -10
    grinding = 0
    instance_create(x, y, obj_jumpdust)
    suplexmove = 0

}
sprite_index = spr_player_grind
image_speed = 0.35
if (!instance_exists(obj_grindeffect))
    instance_create(x, y, obj_grindeffect)
