

if (obj_player1.spotlight == 1)
	if	obj_player1.custompalette = true
		pal_swap_set(obj_player1.surf_pallete, 1, true)
	else if	obj_player1.custompalette = false
		pal_swap_set(obj_player1.spr_palette, obj_player1.paletteselect, false)
else
	if	obj_player2.custompalette = true
		pal_swap_set(obj_player2.surf_pallete, 1, true)
	else if	obj_player2.custompalette = false
		pal_swap_set(obj_player2.spr_palette, obj_player2.paletteselect, false)
		
var player = obj_player1
var player2 = obj_player2
if (obj_player1.spotlight == 0)
{
    player = obj_player2
    player2 = obj_player1
}
else
{
    player = obj_player1
    player2 = obj_player2
}
if global.hudmode != 1
{
	//Backup
	 if (player.pizzashieldbackup >= 1)
	 {
		 for (var i = 0; i < player.pizzashieldbackup; ++i) {
		      draw_sprite_ext(spr_shieldbackup, -1, 50, 100 + (32*i), 1, 1, 0, c_white, alpha)
		 }
	 }
	 
	 
if (player.state != 55)
{
    if (player.character == "P")
    {
        if (shoving == 1)
            draw_sprite_ext_camera(spr_pepinoHUD_shove, image_index, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index == spr_knightpep_thunder)
            draw_sprite_ext_camera(spr_pepinoHUDthunder, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index != spr_knightpep_start && (player.state == 24 || player.state == 18))
            draw_sprite_ext_camera(spr_pepinoHUDknight, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index == spr_bombpep_end)
            draw_sprite_ext_camera(spr_pepinoHUDbombend, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (instance_exists(obj_itspizzatime) || player.sprite_index == spr_bombpep_intro || player.sprite_index == spr_bombpep_runabouttoexplode || player.sprite_index == spr_bombpep_run || player.sprite_index == spr_player_fireass)
            draw_sprite_ext_camera(spr_pepinoHUDscream, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.state == 93 || (player.state == 77 && shake_mag > 0))
            draw_sprite_ext_camera(spr_pepinoHUDstun, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index == spr_player_victory || player.state == 56 || player.state == 62 || player.state == 23 || (player.state == 54 && player.sprite_index == spr_player_levelcomplete))
            draw_sprite_ext_camera(spr_pepinoHUDhappy, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index == spr_player_machroll || player.sprite_index == spr_player_tumble)
            draw_sprite_ext_camera(spr_pepinoHUDrolling, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.state == 69 || (player.state == states.pogo && player.pogomovespeed < 7) ||  player.state == 33 || player.state == 92 || player.state == 74 || player.state == 57 || player.state == 63 || player.state == 42 || player.state == 65 || player.state == 46 || player.state == 47 || player.state == 51 || player.state == 48 || player.state == 49 || player.state == 50)
            draw_sprite_ext_camera(spr_pepinoHUDmach1, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.state == 70 || (player.state == states.pogo && player.pogomovespeed > 7 && player.pogomovespeed < 9) || player.sprite_index == spr_player_dive || player.sprite_index == spr_player_machslideboost || player.state == 17 || player.state == 111 || player.state == 22 || player.state == 43)
            draw_sprite_ext_camera(spr_pepinoHUDmach2, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.state == 91 && player.sprite_index == spr_player_crazyrun)
            draw_sprite_ext_camera(spr_pepinoHUDmach4, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.state == states.jetpack && player.sprite_index == player.spr_jetpackcrazy)
            draw_sprite_ext_camera(spr_pepinoHUDmach4, -1, 125, 100, 1, 1, 0, c_white, alpha)			
        else if (player.state == 91 || (player.state == states.pogo && player.pogomovespeed > 9) ||player.state == states.jetpack || player.sprite_index == spr_player_machslideboost3)
            draw_sprite_ext_camera(spr_pepinoHUDmach3, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.state == 73 || player.sprite_index == spr_bombpep_end || player.sprite_index == spr_player_fireassend || player.state == 36 || player.state == 27 || (player.state == 54 && player.sprite_index == spr_player_bossintro) || (player.state == 54 && player.sprite_index == spr_player_idle))
            draw_sprite_ext_camera(spr_pepinoHUDhurt, -1, 125, 100, 1, 1, 0, c_white, alpha)
		else if (global.combo >= 3) && global.pausecombotime = true
            draw_sprite_ext_camera(spr_pepinoHUDmenacing, -1, 125, 100, 1, 1, 0, c_white, alpha)			
        else if (player.angry == 1)
            draw_sprite_ext_camera(spr_pepinoHUD3hp, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index == spr_player_hurtidle || player.sprite_index == spr_player_hurtwalk)
            draw_sprite_ext_camera(spr_pepinoHUD1hp, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (global.panic == 1 || global.snickchallenge == 1 || global.miniboss == 1)
            draw_sprite_ext_camera(spr_pepinoHUDpanic, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index == spr_shotgun_pullout)
            draw_sprite_ext_camera(spr_pepinoHUDmenacing, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else
            draw_sprite_ext_camera(spr_pepinoHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
    }
    if (player.character == "N")
    {
        if (shoving == 1)
            draw_sprite_ext_camera(spr_noiseHUD_shove, image_index, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index == player.spr_knightpepthunder)
            draw_sprite_ext_camera(spr_noiseHUD_thunder, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index != player.spr_knightpepstart && (player.state == 24 || player.state == 18))
            draw_sprite_ext_camera(spr_noiseHUD_knight, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index == player.spr_bombpepend)
            draw_sprite_ext_camera(spr_noiseHUD_bomb, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (instance_exists(obj_itspizzatime) || player.sprite_index == player.spr_bombpepintro || player.sprite_index == player.spr_bombpeprunabouttoexplode || player.sprite_index == player.spr_bombpeprun || player.sprite_index == player.spr_fireass)
            draw_sprite_ext_camera(spr_noiseHUD_panic, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.state == 93 || (player.state == 77 && shake_mag > 0))
            draw_sprite_ext_camera(spr_noiseHUD_groundpound, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index == player.spr_victory || player.state == 56 || player.state == 62 || player.state == 23 || (player.state == 54 && player.sprite_index == spr_player_levelcomplete))
            draw_sprite_ext_camera(spr_noiseHUD_happy, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.state == 69 || (player.state == states.pogo && player.pogomovespeed <= 7) || player.state == 33 || player.state == 92 || player.state == 74 || player.state == 57 || player.state == 63 || player.state == 42 || player.state == 65 || player.state == 46 || player.state == 47 || player.state == 51 || player.state == 48 || player.state == 49 || player.state == 50)
            draw_sprite_ext_camera(spr_noiseHUD_mach1, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.state == 70 || (player.state == states.pogo && player.pogomovespeed > 7 && player.pogomovespeed < 12) || player.sprite_index == player.spr_dive || player.sprite_index == player.spr_machslideboost || player.state == 17 || player.state == 111 || player.state == 22 || player.state == 43)
            draw_sprite_ext_camera(spr_noiseHUD_mach2, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.state == 91 && player.sprite_index == player.spr_crazyrun)
            draw_sprite_ext_camera(spr_noiseHUD_crazyrun, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.state == states.jetpack && player.sprite_index == player.spr_jetpackcrazy)
            draw_sprite_ext_camera(spr_noiseHUD_crazyrun, -1, 125, 100, 1, 1, 0, c_white, alpha)		
        else if (player.state == 91 || (player.state == states.pogo && player.pogomovespeed >= 12) || player.state == states.jetpack || player.sprite_index == player.spr_mach3boost)
            draw_sprite_ext_camera(spr_noiseHUD_mach3, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.state == 73 || player.sprite_index == player.spr_bombpepend || player.sprite_index == player.spr_fireassend || player.state == 36 || player.state == 27 || (player.state == 54 && player.sprite_index == spr_player_bossintro) || (player.state == 54 && player.sprite_index == player.spr_idle))
            draw_sprite_ext_camera(spr_noiseHUD_hurt, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (global.combo >= 3) && global.pausecombotime = true
            draw_sprite_ext_camera(spr_noiseHUD_menacing, -1, 125, 100, 1, 1, 0, c_white, alpha)			
        else if (player.angry == 1)
            draw_sprite_ext_camera(spr_noiseHUD_angry, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index == player.spr_hurtidle || player.sprite_index == player.spr_hurtwalk)
            draw_sprite_ext_camera(spr_noiseHUD_lowhealth, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (global.panic == 1 || global.snickchallenge == 1 || global.miniboss == 1)
            draw_sprite_ext_camera(spr_noiseHUD_panic, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index == spr_shotgun_pullout)
            draw_sprite_ext_camera(spr_noiseHUD_menacing, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else
            draw_sprite_ext_camera(spr_noiseHUD_idle, -1, 125, 100, 1, 1, 0, c_white, alpha)
    }
    if (player.character == "V")
    {
        if (shoving == 1)
            draw_sprite_ext_camera(spr_pepinoHUD_shove, image_index, 125, 100, 1, 1, 0, c_white, alpha)
        else if (sprite_index == spr_playerV_dead)
            draw_sprite_ext_camera(spr_playerV_hurtHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.vigihealth < 25 && player.vigihealth != 0)
            draw_sprite_ext_camera(spr_playerV_panicHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.vigihealth == 0)
            draw_sprite_ext_camera(spr_playerV_angryHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index == spr_playerV_angryidle || player.sprite_index == spr_playerV_angrymove)
            draw_sprite_ext_camera(spr_playerV_angryHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index == spr_playerV_bodyslamprep || player.sprite_index == spr_playerV_bodyslam || player.sprite_index == spr_playerV_bodyslamland)
            draw_sprite_ext_camera(spr_playerV_angryHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index == spr_playerV_suprise || player.sprite_index == spr_playerV_facehurt)
            draw_sprite_ext_camera(spr_playerV_angryHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index == spr_playerV_keydoor || player.sprite_index == spr_playerV_victory || player.sprite_index == spr_playerV_gottreasure)
            draw_sprite_ext_camera(spr_playerV_happyHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index == spr_playerV_keydoor || player.sprite_index == spr_playerV_keyget || player.sprite_index == spr_playerV_gottreasure)
            draw_sprite_ext_camera(spr_playerV_happyHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.state == 69 || player.state == 33 || player.state == 92 || player.state == 74 || player.state == 57 || player.state == 63 || player.state == 42 || player.state == 65 || player.state == 46 || player.state == 47 || player.state == 51 || player.state == 48 || player.state == 49 || player.state == 50)
            draw_sprite_ext_camera(spr_playerV_machHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index == spr_playerV_dive)
            draw_sprite_ext_camera(spr_playerV_machHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.state == 70 || player.state == states.pogo || player.sprite_index == spr_playerV_mach2boost || player.state == 17 || player.state == 22 || player.state == 43)
            draw_sprite_ext_camera(spr_playerV_machHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.state == 91 && player.sprite_index == spr_playerV_crazyrun)
            draw_sprite_ext_camera(spr_playerV_machHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.state == states.jetpack && player.sprite_index == player.spr_jetpackcrazy)
            draw_sprite_ext_camera(spr_playerV_machHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)			
        else if (player.state == 91 || player.state == states.jetpack || player.sprite_index == spr_playerV_mach3boost)
            draw_sprite_ext_camera(spr_playerV_machHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.state == 73 || player.sprite_index == spr_bombpep_end || player.sprite_index == spr_player_fireassend || player.state == 36 || player.state == 27 || (player.state == 54 && player.sprite_index == spr_player_bossintro) || (player.state == 54 && player.sprite_index == spr_player_idle))
            draw_sprite_ext_camera(spr_playerV_hurtHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index == spr_playerV_hurt)
            draw_sprite_ext_camera(spr_playerV_hurtHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (global.combo >= 3) && global.pausecombotime = true
            draw_sprite_ext_camera(spr_playerV_happyHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)			
        else if (global.panic == 1 || global.snickchallenge == 1 || global.miniboss == 1)
            draw_sprite_ext_camera(spr_playerV_panicHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index == spr_playerV_panic)
            draw_sprite_ext_camera(spr_playerV_panicHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
        else
            draw_sprite_ext_camera(spr_playerV_normalHUD, -1, 125, 100, 1, 1, 0, c_white, alpha)
    }
    if (player.character == "S")
    {
        if (shoving == 1)
            draw_sprite_ext_camera(spr_pepinoHUD_shove, image_index, 125, 100, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index == spr_snick_thunder)
            draw_sprite_ext_camera(spr_snickHUD_thunder, -1, 125, 60, 1, 1, 0, c_white, alpha)
        else if (player.sprite_index != spr_snick_robotsword && (player.state == 24 || player.state == 18))
            draw_sprite_ext_camera(spr_snickHUD_robo, -1, 125, 60, 1, 1, 0, c_white, alpha)
        else
            draw_sprite_ext_camera(spr_snickHUD_normal, -1, 125, 60, 1, 1, 0, c_white, alpha)
    }
    shader_reset()

	
	//Speedbar
    if ((player.movespeed < 2.4 || (!(player.state == 69 || player.state == 70 || player.state == 91 || player.state == states.jetpack || player.state == 17 || player.state == 71 || player.state == 37 || player.state == 12 || player.state == 111 || player.state == 22))) && player.state != states.pogo) || (player.pogomovespeed <= 7 && player.state = states.pogo && player.movespeed <= 0)
        draw_sprite_ext(spr_speedbar, 0, 125, 140, 1, 1, 0, c_white, alpha)
    else if ((player.movespeed >= 2.4 && player.movespeed < 4.8 && (player.state == 69 || player.state == 70 || player.state == 91  || player.state == states.jetpack || player.state == 17 || player.state == 71 || player.state == 37 || player.state == 12 || player.state == 111 || player.state == 22)) && player.state != states.pogo) || (player.pogomovespeed <= 7 && player.state = states.pogo && player.movespeed > 0)
        draw_sprite_ext(spr_speedbar, 1, 125, 140, 1, 1, 0, c_white, alpha)
    else if ((player.movespeed >= 4.8 && player.movespeed < 7.2 && (player.state == 69 || player.state == 70 || player.state == 91   || player.state == states.jetpack || player.state == 17 || player.state == 71 || player.state == 37 || player.state == 12 || player.state == 111 || player.state == 39 || player.state == 110 || player.state == 22)) && player.state != states.pogo) || (player.pogomovespeed > 7 && player.state = states.pogo && player.pogomovespeed < 12)
        draw_sprite_ext(spr_speedbar, 2, 125, 140, 1, 1, 0, c_white, alpha)
    else if ((player.movespeed >= 7.2 && player.movespeed < 9.6 && (player.state == 69 || player.state == 70 || player.state == 91   || player.state == states.jetpack || player.state == 17 || player.state == 71 || player.state == 37 || player.state == 12 || player.state == 111 || player.state == 39 || player.state == 110 || player.state == 22)) && player.state != states.pogo) || (player.pogomovespeed >= 12 && player.state = states.pogo && player.pogomovespeed < 14)
        draw_sprite_ext(spr_speedbar, 3, 125, 140, 1, 1, 0, c_white, alpha)
    else if ((player.movespeed >= 9.6 && player.movespeed < 12 && (player.state == 69 || player.state == 70 || player.state == 91  || player.state == states.jetpack || player.state == 17 || player.state == 71 || player.state == 37 || player.state == 12 || player.state == 111 || player.state == 39 || player.state == 110 || player.state == 22)) && player.state != states.pogo) || (player.pogomovespeed >= 14 && player.state = states.pogo)
        draw_sprite_ext(spr_speedbar, 4, 125, 140, 1, 1, 0, c_white, alpha)
    else if ((player.movespeed >= 12 && (player.state == 69 || player.state == 70 || player.state == 91  || player.state == states.jetpack || player.state == 17 || player.state == 71 || player.state == 37 || player.state == 12 || player.state == 111 || player.state == 22)))
        draw_sprite_ext(spr_speedbarmax, -1, 125, 140, 1, 1, 0, c_white, alpha)
    //font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
    draw_set_font(global.font)
    draw_set_halign(fa_center)
    draw_set_color(c_white)
	if (room != rank_room && room != strongcold_endscreen)
    {
		var vdrawx = 190
		var vdrawy = 65
		if player.hurted = 1 {
		vdrawx =190 + random_range(-1,1)
		vdrawy =65 +  random_range(-1,1)
		}
		else {
		vdrawx = 190
		vdrawy = 65	
		}
        if (player.character == "V")
            draw_text(vdrawx, vdrawy, player.vigihealth)
    }
    if (global.panic == 1 || global.snickchallenge == 1 || global.miniboss == 1)
    {
        if (global.seconds < 10)
        {
            if (global.minutes < 1)
                draw_set_color(c_red)
            else
                draw_set_color(c_white)
            draw_text((random_range(1, -1) + 480), (random_range(1, -1) + 65), string_hash_to_newline(((string(global.minutes) + ":0") + string(global.seconds))))
        }
        else if (global.seconds >= 10)
        {
            if (global.minutes == 0 && global.seconds <= 30)
                draw_set_color(c_red)
            else
                draw_set_color(c_white)
            draw_text((random_range(1, -1) + 480), (random_range(1, -1) + 65), string_hash_to_newline(((string(global.minutes) + ":") + string(global.seconds))))
        }
    }
    if (global.key_inv == 1)
        draw_sprite_ext(spr_key, -1, 50, 30, 1, 1, 0, c_white, alpha)
    draw_sprite_ext(spr_inv, -1, 50, 30, 1, 1, 0, c_white, alpha)

   //draw_text(190, 97, string(global.freezeframe))

}
}
draw_set_blend_mode(0)


