with other.id
{
	sprite_index = spr_knightpepthunder
	if !audio_is_playing(sfx_becomeknight)
	scr_soundeffect(sfx_becomeknight)
	instance_destroy(other.id)
	image_index = 0
	with (obj_camera)
	{
	    shake_mag = 10
	    shake_mag_acc = (30 / room_speed)
	}
}
