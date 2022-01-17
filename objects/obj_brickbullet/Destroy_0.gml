with (instance_create(x, y, obj_debris))
	{
		initialhsp = obj_player.hsp / 1.7
		initialvsp = clamp(obj_player.vsp / 1.3,-12,random_range(0,-5))
        sprite_index = spr_brickdead
	}