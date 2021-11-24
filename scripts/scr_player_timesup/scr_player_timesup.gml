function scr_player_timesup() {
	var second_player = (object_index == obj_player2 ? obj_player1 : obj_player2)
	xscale = 1
	inv_frames = 0
	sprite_index = spr_Timesup
	alarm[7] = -1
	alarm[8] = -1
	alarm[5] = -1
	if place_meeting(x, y, obj_timesup)
	{
	    state = 55
	    sprite_index = spr_deathend
	    alarm[10] = 5
	    vsp = -8
	    hsp = -4
	}
	if (room == timesuproom)
	{
	    x = 480
	    y = 270
		second_player.x = -1000
		second_player.y = 500
		second_player.state = 8		
	}
	if object_index == obj_player2 
		obj_player1.spotlight = true;
	if object_index == obj_player1 
		obj_player1.spotlight = false;
	if (floor(image_index) == 9)
	    image_speed = 0



}
