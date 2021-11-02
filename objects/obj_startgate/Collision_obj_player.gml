with (obj_player1)
{
    if (place_meeting(x, y, other) && key_up && grounded && (state == 0 || state == 69 || state == 70 || state == 91) && (!instance_exists(obj_noisesatellite)) && (!instance_exists(obj_fadeout)) && state != states.startgate && state != 61 && obj_player1.spotlight == 1)
    {
		#region Collided
		other.selected = true;
		obj_tv.alarm[0] = -1
		obj_tv.imageindexstore = 0
		obj_tv.image_index = 0
		obj_tv.image_speed = 0
		obj_tv.bootingup = false
		ds_queue_clear(global.newhudmessage);
		global.levelname = other.level
        scr_soundstopall()
		x = other.cplayer1x
        backtohubstartx = other.cplayerx
        backtohubstarty = y
        backtohubroom = room
        mach2 = 0
        obj_camera.chargecamera = 0
        image_index = 0
        state = states.startgate
		
        if (global.coop == 1)
        {
            with (obj_player2)
            {
				x = obj_player1.x + 64
                y = obj_player1.y
				backtohubstartx = obj_player1.backtohubstartx 
				backtohubstarty = obj_player1.y
				backtohubroom = room
                mach2 = 0
                obj_camera.chargecamera = 0
                image_index = 0
                state = states.startgate
            }
        }
		#endregion
    }
}
with (obj_player2)
{
    if (place_meeting(x, y, other) && key_up && grounded && (state == 0 || state == 69 || state == 70 || state == 91) && (!instance_exists(obj_noisesatellite)) && (!instance_exists(obj_fadeout)) && state != states.startgate && state != 61 && obj_player1.spotlight == 0)
    {
		#region Collided
		other.selected = true;
		obj_tv.alarm[0] = -1
		obj_tv.imageindexstore = 0
		obj_tv.image_index = 0
		obj_tv.image_speed = 0
		obj_tv.bootingup = false
		ds_queue_clear(global.newhudmessage);	
		global.levelname = other.level
        scr_soundstopall()
		x = other.cplayer1x
        backtohubstartx = other.cplayerx
        backtohubstarty = y
        backtohubroom = room
        mach2 = 0
        obj_camera.chargecamera = 0
        image_index = 0
        state = states.startgate
        if (global.coop == 1)
        {
            with (obj_player1)
            {
                x = obj_player2.x + 64
                y = obj_player2.y
				backtohubstartx = obj_player2.backtohubstartx 
				backtohubstarty = obj_player2.y
				backtohubroom = room				
                mach2 = 0
                obj_camera.chargecamera = 0
                image_index = 0
                state = states.startgate
            }
        }
		#endregion
    }
}
if can_gotolevel = true && (((floor(obj_player1.image_index) >= (obj_player1.image_number - 1) && obj_player1.state == states.startgate) || (floor(obj_player2.image_index) >= (obj_player2.image_number - 1) && obj_player2.state == states.startgate)))
{
	#region Go to Level
    with (obj_player)
    {
		#region Snick Challenge
        if (other.level == "snickchallenge")
        {
            global.wave = 0
            global.maxwave = (((global.minutes * 60) + global.seconds) * 60)
            if global.panicbg = true
                scr_panicbg_init()
            global.snickchallenge = 1
            global.nocombo = 1
            obj_player1.collectscore = 10000
			with (obj_camera)
			{
		        alarm[1] = 60
                global.seconds = 59
                global.minutes = 9
            }
        }
		#endregion
		
        vigihealth = 100;
        obj_music.fadeoff = 0;
        targetDoor = other.targetDoor;
        targetRoom = other.targetRoom;
		global.timeattack = other.selection;
		obj_timeattack.alarm[1] = 60

        if (!instance_exists(obj_fadeout))
		{
			with instance_create(x, y, obj_fadeout)
			{
				global.flushtextures = true
			}
		}
    }
	#endregion
}


