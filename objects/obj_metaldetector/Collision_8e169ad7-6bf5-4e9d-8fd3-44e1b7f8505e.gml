with other
{
	if GshotgunAnim = true
	{
            with (instance_create(x, y, obj_sausageman_dead))
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