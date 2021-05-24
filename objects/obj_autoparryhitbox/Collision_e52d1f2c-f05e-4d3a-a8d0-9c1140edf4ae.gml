if instance_exists(other.id)
{
	if (other.object_index != obj_coolpinea_hitbox)
	{
		with (other.id)
			instance_destroy()
		if (!collided)
			event_user(0)
	}
	else if (other.ID.sprite_index == spr_coolpinea_taunt && other.object_index == obj_coolpinea_hitbox)
	{
		with (other.id)
			instance_destroy()
		if (!collided)
		    event_user(0)
	}
}

