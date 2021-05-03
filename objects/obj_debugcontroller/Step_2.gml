///@description command function

if active = true
{
if (keyboard_check_pressed(vk_return) && input != "")
    {
		var _commands = string_split(input, " ")
		
		var _cmd = ds_list_find_value(_commands, 0)
		
		switch _cmd
		{
			case "room_goto":
				var arg1 if ds_list_find_value(_commands, 1) == undefined arg1 = 0 else arg1 = ds_list_find_value(_commands, 1)
				var arg2 if ds_list_find_value(_commands, 2) == undefined arg2 = 0 else arg2 = ds_list_find_value(_commands, 2)
				if asset_get_type(arg1) = asset_room
				{
					obj_player1.targetRoom = asset_get_index(arg1)
					obj_player2.targetRoom = asset_get_index(arg1)
				}
				obj_player1.targetDoor = arg2
				obj_player2.targetDoor = arg2
				instance_create(0, 0, obj_fadeout) break
			case "escape":
				var arg1 if ds_list_find_value(_commands, 1) == undefined arg1 = 0 else arg1 = ds_list_find_value(_commands, 1)
				var arg2 if ds_list_find_value(_commands, 2) == undefined arg2 = 10 else arg2 = ds_list_find_value(_commands, 2)
				global.panic = !global.panic
				global.minutes = real(arg1)
				global.seconds = real(arg2)
				obj_camera.alarm[1] = 60 break
			case "togglecollision":
				showcollisions = !showcollisions break
			default:
				show_debug_message("FAIL!")
		}
		
        active = false
    }
}
	
with (obj_solid)
{
    if (object_index == obj_solid || object_index == obj_secretbigblock || object_index == obj_secretblock || object_index == obj_secretmetalblock)
        visible = other.showcollisions
}
with (obj_slope)
{
    if (object_index == obj_slope)
        visible = other.showcollisions
}
with (obj_platform)
{
    if (object_index == obj_platform)
        visible = other.showcollisions
}
