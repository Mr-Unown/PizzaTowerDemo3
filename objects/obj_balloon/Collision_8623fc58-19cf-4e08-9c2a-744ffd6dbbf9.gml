if popped = false
{
	instance_create(x, y, obj_balloonpop)
	with other.id
	{
		vsp = -15
		jumpstop = 1
		if (state == 58) {
         sprite_index = spr_tomatojump
		 stompAnim = 0
        jumpAnim = 1
		}
	}
	respawnbuffer = 100
	popped = true
}


