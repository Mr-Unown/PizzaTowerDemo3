with other.id
{
	if object_index = obj_player1
	{
		if state != 51
		{
		other.playerid = id
        other.playerstate = state
        other.playermovespeed = movespeed
        other.playergrav = 0.5
        other.playerimageindex = image_index
        other.playerspriteindex = sprite_index
        other.playersmash = freefallsmash	  
		alarm[8] = 100
		alarm[7] = 60
        alarm[5] = 2
		visible = false
        hsp = 0
        vsp = 0
        grav = 0
        hurted = 1
        state = 51
		other.alarm[0] = 20
			repeat (5)
			{
			with (instance_create((other.x + random_range(-100, 100)), (other.y + random_range(-100, 100)), obj_balloonpop))
				sprite_index = spr_shotgunimpact
			}
		}
	}
	else
	{
		if state != 51
		{
		other.playerid2 = id
        other.player2state = state
        other.player2movespeed = movespeed
        other.player2grav = 0.5
        other.player2imageindex = image_index
        other.player2spriteindex = sprite_index
        other.player2smash = freefallsmash	  
		alarm[8] = 100
		alarm[7] = 60
        alarm[5] = 2
		visible = false
        hsp = 0
        vsp = 0
        grav = 0
        hurted = 1
        state = 51
		other.alarm[1] = 20
			repeat (5)
			{
			with (instance_create((other.x + random_range(-32, 32)), (other.y + random_range(-32, 32)), obj_balloonpop))
				sprite_index = spr_shotgunimpact
			}
		}
	}
}


	

