/// @description Freezes time for the given time. 
alarm[3] = round(global.freezeframetimer / room_speed) * 3;
if global.freezeframe = false {
		
		if global.hitstunenabled >= 2
			global.freezeframetimer = clamp(global.freezeframetimer - 50,0,185);
		else
			global.freezeframetimer = global.defaulttime;
		
		if global.can_freeze = true && global.hitstunenabled != 0 {
		#region Frozen entities
		with obj_player {
			if state != states.frozen {
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
			state = states.frozen;
			}
		}		
		with obj_baddie {
			if state != enemystates.enemyfrozen {
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
		#endregion
		global.freezeframe = true;
		#region Zoom in
		with obj_camera {
			shake_mag = 2
			shake_mag_acc = (3 / room_speed)
			if targetzoom1 > 896
				targetzoom1 -= 32
			else
				targetzoom1 = 896
			if targetzoom2 > 504
				targetzoom2 -= 18
			else
				targetzoom2 = 504
			angle = random_range((-maxangle), maxangle)
		}
		#endregion
		}
}




