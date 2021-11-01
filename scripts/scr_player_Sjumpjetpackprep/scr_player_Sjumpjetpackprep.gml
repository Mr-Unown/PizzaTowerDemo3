function scr_player_Sjumpjetpackprep() {
	combo = 0
	mach2 = 0
	hsp = 0
	vsp = 0
	start_running = 1
	alarm[4] = 14
	jumpAnim = 1
	dashAnim = 1
	landAnim = 0
	machslideAnim = 1
	moveAnim = 1
	stopAnim = 1
	crouchslideAnim = 1
	crouchAnim = 1
	jetpacking = true
	pogojetcharge = false
	pogojetchargebuffer = 50

	if (floor(image_index) = image_number - 1 && character == "P")
	{
		if sprite_index = spr_player_sjumpcancelprep
		{
			scr_soundeffect(sfx_superjumprelease)		
			mach2 = 100
			machhitAnim = 0
			state = states.tumble
			sprite_index = spr_player_sjumpcancel
			image_index = 0
			movespeed = 14
		}
	}

	if floor(image_index) = image_number - 1
	{
		if sprite_index = spr_playerN_jetpackstart
		{
			scr_soundeffect(sfx_superjumprelease)		
			mach2 = 100
			machhitAnim = 0
			state = states.jetpack
			flash = 1
			instance_create(x, y, obj_jumpdust)
			movespeed = 14			
		}
		else if sprite_index = spr_superjumpprep
		{
			scr_soundeffect(sfx_superjumprelease)
			instance_create(x, y, obj_explosioneffect)
			sprite_index = spr_superjump
			state = 63
			vsp = -15
		}
	}
	if (!audio_is_playing(superjumpholdsnd))
	{
	    superjumpholdsnd = audio_play_sound(sfx_superjumphold, 1, false)
	    audio_sound_gain(superjumpholdsnd, (1 * global.soundeffectsvolume), 0)
	}
	if sprite_index = spr_playerN_jetpackstart
		image_speed = 0.5
	else
		image_speed = 0.35




}
