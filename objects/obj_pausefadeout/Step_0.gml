if (fadealpha > 1 && fadein == 0)
{
    if (obj_pause.pause == 1)
    {
        obj_pause.pause = 0
        instance_activate_all()
        audio_resume_sound(obj_music.pausedmusic)
        audio_resume_sound(obj_player.mach1snd)
        audio_resume_sound(obj_player.mach2snd)
        audio_resume_sound(obj_player.mach3snd)
        audio_resume_sound(obj_player.knightslide)
        audio_resume_sound(obj_player.bombpep1snd)
        audio_resume_sound(obj_player.mach4snd)
        audio_resume_sound(obj_player.tumble2snd)
        audio_resume_sound(obj_player.tumble1snd)
        audio_resume_sound(obj_player.tumble3snd)
        audio_resume_sound(obj_player.superjumpholdsnd)
        audio_resume_sound(obj_player.superjumpprepsnd)
        audio_resume_sound(obj_player.suplexdashsnd)
		audio_resume_sound(sfx_smallvictory)
		audio_resume_sound(global.escaperumblemusic)
        if (global.ruinmusic == 1 && global.snickchallenge == 0 && global.panic == 0 && global.timeattack == 0)
        {
            if audio_is_playing(mu_ruin)
                audio_resume_sound(mu_ruin)
        }
        if (global.panic == 0 && instance_exists(obj_johnpillar))
            audio_resume_sound(global.scarysound)
    }
    else if (obj_pause.pause == 0)
    {
        audio_pause_all()
        obj_pause.pause = 1
        instance_deactivate_all(true)
        instance_activate_object(obj_pause)
		instance_activate_object(obj_discordrpc)
		instance_activate_object(rousrDissonance)
    }
    fadein = 1
}
if (fadein == 0)
    fadealpha += 0.1
else if (fadein == 1)
    fadealpha -= 0.1
if fadein == 1
{
	while global.flushtextures = true
	{
		draw_texture_flush();
		sprite_prefetch_multi(global.prefetcharray);
		global.flushtextures = false
		show_debug_message("Flushed Textures");
	}
	if fadealpha < 0
		instance_destroy()
}


