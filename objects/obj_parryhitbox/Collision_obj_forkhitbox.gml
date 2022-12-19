scr_sound(sound_parry)
with (obj_baddie) 
{
	 if (distance_to_object(obj_parryhitbox.id)) < 64
        {
            instance_destroy()
        }
}
with (obj_player)
{
	state = 105
	sprite_index = spr_player_parry
	image_index = 0
}
