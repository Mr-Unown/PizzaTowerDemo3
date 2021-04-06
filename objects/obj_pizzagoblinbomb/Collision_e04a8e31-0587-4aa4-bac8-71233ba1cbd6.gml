with other.id
{
	if other.friendly = false
	{
if (state != 114 && state != 113 && (!(state == 51 && instance_exists(parry_id))))
{
    if (cutscene == 0 && other.grounded == 1 && state != 27 && (state == 22 || character == "S"))
    {
		global.pausecombotime = true	
        bombpeptimer = 100
        state = 27
        image_index = 0
        sprite_index = spr_bombpepintro
        instance_destroy(other.id)
    }
    if (hurted == 0 && other.grounded == 0)
    {
        instance_destroy(other.id)
    }
}
}
}

