if x <= 288
{
	audio_sound_gain(audio_play_sound(sfx_scream6, 1, false), (1.5 * global.soundeffectsvolume), 0)
	audio_sound_gain(audio_play_sound(sfx_scream7, 1, false), (1.5 * global.soundeffectsvolume), 0)
	audio_sound_gain(audio_play_sound(sfx_scream8, 1, false), (1.5 * global.soundeffectsvolume), 0)
	audio_sound_gain(audio_play_sound(sfx_scream9, 1, false), (1.5 * global.soundeffectsvolume), 0)
	instance_destroy()
}