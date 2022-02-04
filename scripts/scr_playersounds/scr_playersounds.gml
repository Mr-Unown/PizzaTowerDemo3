function scr_playersounds() {
	with id
	{
		var pitchspd = global.pitchshift == 1 ? (movespeed/9.5) * 0.8 : 1;
	    if (state == 69 && (!audio_is_playing(sfx_mach1)) && grounded)
	    {
	        mach1snd = audio_play_sound(sfx_mach1, 1, false)
	        audio_sound_gain(mach1snd, (1 * global.soundeffectsvolume), 0)
	    }
	    else if (state != 69 || (!grounded) || move == (-xscale))
	        audio_stop_sound(mach1snd)
	    if ((sprite_index == spr_mach || state == 17 || (sprite_index == spr_player_machhit && state == 70)) && (!audio_is_playing(sfx_mach2)))
	    {
	        mach2snd = audio_play_sound(sfx_mach2, 1, false)
	        audio_sound_gain(mach2snd, (1 * global.soundeffectsvolume), 0)
	    }
	    else if (sprite_index != spr_mach && state != 17 && sprite_index != spr_player_machhit)
	        audio_stop_sound(mach2snd)
	    if (((state == 91 || sprite_index == spr_mach3boost) || (state = states.jetpack)) && sprite_index != spr_jetpackcrazy && sprite_index != spr_crazyrun && (!audio_is_playing(sfx_mach3)))
	    {
	        mach3snd = audio_play_sound(sfx_mach3, 1, false)
	        audio_sound_gain(mach3snd, (1 * global.soundeffectsvolume), 0)
	    }
	    else if (((state != 91 && sprite_index != spr_mach3boost) && (state != states.jetpack)) || (sprite_index == spr_crazyrun || sprite_index = spr_jetpackcrazy))
	        audio_stop_sound(mach3snd)
	    if (state == 18 && (!audio_is_playing(sfx_knightslide) && grounded))
	    {
	        knightslide = audio_play_sound(sfx_knightslide, 1, false)
	        audio_sound_gain(knightslide, (1 * global.soundeffectsvolume), 0)
	    }
	    else if ((state != 18 || grounded = false) && audio_is_playing(sfx_knightslide))
	        audio_stop_sound(knightslide)
	    if ((sprite_index == spr_bombpeprun || sprite_index == spr_bombpeprunabouttoexplode) && (!audio_is_playing(sfx_bombpep1)))
	    {
	        bombpep1snd = audio_play_sound(sfx_bombpep1, 1, false)
	        audio_sound_gain(bombpep1snd, (1 * global.soundeffectsvolume), 0)
	    }
	    else if (sprite_index != spr_bombpeprun && sprite_index != spr_bombpeprunabouttoexplode && audio_is_playing(sfx_bombpep1))
	        audio_stop_sound(bombpep1snd)
	    if ((sprite_index == spr_crazyrun || sprite_index = spr_jetpackcrazy) && (!audio_is_playing(sfx_mach4)))
	    {
	        mach4snd = audio_play_sound(sfx_mach4, 1, false)
	        audio_sound_gain(mach4snd, (1 * global.soundeffectsvolume), 0)
	    }
	    else if (sprite_index != spr_crazyrun) && sprite_index != spr_jetpackcrazy
	        audio_stop_sound(mach4snd)
	    if (state != 65 && state != states.jetpackstart  && audio_is_playing(superjumpprepsnd))
	        audio_stop_sound(superjumpprepsnd)
	    if (state != 65 && state != states.jetpackstart && audio_is_playing(superjumpholdsnd))
	        audio_stop_sound(superjumpholdsnd)
		
		if (sprite_index == spr_tumblestart && (!audio_is_playing(sfx_tumble1)) && floor(image_index) < 11)
	    {
	        tumble1snd = audio_play_sound(sfx_tumble1, 1, false)
	        audio_sound_gain(tumble1snd, (1 * global.soundeffectsvolume), 0)
			
	    }
	    if (sprite_index == spr_tumblestart && floor(image_index) == 11 && (!audio_is_playing(sfx_tumble2)))
	    {
	        tumble2snd = audio_play_sound(sfx_tumble2, 1, false)
	        audio_stop_sound(tumble1snd)
	        audio_sound_gain(tumble2snd, (1 * global.soundeffectsvolume), 0)
	    }
	    if ((sprite_index == spr_tumble || sprite_index == spr_playerN_jetpackslide || sprite_index == spr_machroll) && (!audio_is_playing(sfx_tumble3)))
	    {
	        tumble3snd = audio_play_sound(sfx_tumble3, 1, false)
	        audio_sound_gain(tumble3snd, (1 * global.soundeffectsvolume), 0)

	    }
	    if (state != 2 && sprite_index != spr_playerN_jetpackslide && sprite_index != spr_machroll)
	    {
	        audio_stop_sound(tumble1snd)
	        audio_stop_sound(tumble2snd)
	        audio_stop_sound(tumble3snd)
	    }
	    if (audio_is_playing(suplexdashsnd) && sprite_index != spr_player_shoryumineken && state != 22)
	        audio_stop_sound(suplexdashsnd)
		//Pitch
		audio_sound_pitch(tumble3snd, pitchspd);
		audio_sound_pitch(tumble1snd, pitchspd);			
	}


}
