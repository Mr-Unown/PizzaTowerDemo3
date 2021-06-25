if other.state != states.breakdance
{
	if instance_exists(ID)
	{
		if (ID.sprite_index == spr_coolpinea_taunt)
		{
			scr_hurtplayer(other.id)
			ID.parrying = 1
			instance_create(other.x, other.y, obj_bangeffect)
			instance_create(other.x, other.y, obj_slapstar)
			ID.hurtedplayeridx = other.x
			ID.tauntreset = 100
			ID.taunttimer = 0
		}
	}
}

