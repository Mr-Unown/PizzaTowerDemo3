function scr_player_climbing(){
y += vsp
vsp = -5
sprite_index = spr_laddermove
image_speed = 0.35
movespeed = 0
if y <= roomstarty
{
	state = states.normal
	sprite_index = spr_idle
	x = roomstartx
	y = roomstarty
}
}