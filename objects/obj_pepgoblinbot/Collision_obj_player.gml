with (other.id)
{
    if cutscene = 0
    {
        if  state != 86 && state != states.frozen && state != 2 && state != 24 && state != 7 && state != 18
        {
            state = 2
            xscale = other.image_xscale
            movespeed = 14
            vsp = 5
            sprite_index = spr_tumble
			other.image_index = 0
			other.sprite_index = spr_pepgoblinbot_kick
        }
		else if state = 86 || state = 2
		{
			vsp = 5
			xscale = other.image_xscale
			other.image_index = 0
			other.sprite_index = spr_pepgoblinbot_kick			
		}
    }
}

