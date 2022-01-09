if other.id == playerid
{
	with other.id
	{
		sprite_index = spr_knightpepthunder
		scr_soundeffect(sfx_becomeknight)
		var randomchance = irandom_range(0,100);
		if (randomchance < global.quipsfrequency) && !audio_is_playing(sfx_lightning)
		{
			scr_soundeffect(sfx_lightning);
		}
		instance_destroy(other.id)
		image_index = 0
		with (obj_camera)
		{	
			shake_mag = 10
			shake_mag_acc = (30 / room_speed)
		}
	}
}