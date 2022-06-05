/// @description Freezes time for the given time. 

switch global.hitstunenabled
{
	case 1:
	global.hitstunalarm = round(global.defaulttime / room_speed) * 3;
	//alarm[3] = round(global.defaulttime / room_speed) * 3;
	break;
	default:
	global.hitstunalarm = round(global.freezeframetimer / room_speed) * 3;		
	//alarm[3] = round(global.freezeframetimer / room_speed) * 3;		
	break;
}

if global.freezeframe = false 
{
		global.freezeframetimer = clamp(global.freezeframetimer - 50,1,185);
		
		if global.can_freeze = true && global.hitstunenabled != 0 
		{
		#region Frozen entities
		with obj_player 
		{
			if state != states.frozen 
			{
			frozenstate = state;
			frozenspriteindex = sprite_index;
			frozenimageindex = image_index;
			frozenimagespeed = image_speed;
			frozenmovespeed = movespeed;
			frozengrav = grav;
			frozensmash = freefallsmash;
			frozenhsp = hsp;
			frozenvsp = vsp;
			frozenjumpbuffer = input_buffer_jump;
			//Alarms
			for (var i = 0; i < 10; i++)
			{
				frozenalarm[i] = alarm_get(i);
			}	
			state = states.frozen;
			}
		}		
		with obj_baddie 
		{
			if state != enemystates.enemyfrozen 
			{
			frozenstate = state;
			frozenspriteindex = sprite_index;
			frozenimageindex = image_index;
			frozenimagespeed = image_speed;
			frozenmovespeed = movespeed;
			frozengrav = grav;
			frozenhsp = hsp;
			frozenvsp = vsp;
			if state != enemystates.enemyshake
				state = enemystates.enemyfrozen;
			}
		}
		with group_afterimageeffects
		{
			
			//Alarms
			for (var i = 0; i < 2; i++)
			{
				frozenalarm[i] = alarm_get(i);
			}
			frozen = true;
		}
		#endregion
		#region Frozen Clocks
		//Alarms obj_camera
		for (var i = 0; i < 3; i++)
		{
			frozenalarm[i] = alarm_get(i);
		}	
		for (var i = 0; i < 3; i++)
		{
			if alarm_get(i) > -1
				alarm_set(i, -1);
		}
		frozen = true;
		with obj_timeattack
		{
			frozenalarm = alarm[1];
			alarm[1] = -1;
			frozen = true;
		}
		with obj_tv
		{
			frozenalarm = alarm[1];
			alarm[1] = -1;
			frozen = true;
		}
		#endregion
		global.freezeframe = true;
		#region Zoom in
		with obj_camera 
		{
			//shake_mag = 2
			//shake_mag_acc = (3 / room_speed)
			//targetzoom1 = approach(targetzoom1,896,32)
			//targetzoom2 = approach(targetzoom2,504,18)
			/*
			if targetzoom1 > 896
				targetzoom1 -= 32
			else
				targetzoom1 = 896
			if targetzoom2 > 504
				targetzoom2 -= 18
			else
				targetzoom2 = 504*/
			//angle = random_range((-maxangle), maxangle)
		}
		#endregion
		}
}




