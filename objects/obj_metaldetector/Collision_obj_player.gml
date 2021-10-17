with other
{
	if GshotgunAnim = true
	{
			if state == states.shotgun
			{
				state = 0
			}
            with (instance_create(x, y,  obj_baddie_dead))
            {
                if (other.character == "P")
                    sprite_index = spr_shotgunback
                else if (other.character == "N")
                    sprite_index = spr_minigunfall
				else
					sprite_index = choose(spr_shotgunback,spr_minigunfall)
            }
            if (Gbackupweapon == 1)
                Gbackupweapon = 0
            else
                GshotgunAnim = 0
	}
}