with other.id
{
		if other.friendly = false
	{
if (state != 114 && state != 113 && (!(state == 51 && instance_exists(parry_id))))
{
    if (hurted == 0)
    {
        instance_destroy(other.id)
        instance_create(x, y, obj_bombexplosion)
    }
}
	}
}

