var _acttransition = acttransition;
with (player)
{
	lastroom_x = other.x
	lastroom_y = other.y
	lastroom = room
	scr_soundeffect(sfx_door)
	obj_camera.chargecamera = 0
	ds_list_add(global.saveroom, id)
	obj_player1.targetDoor = other.targetDoor
	obj_player1.targetRoom = other.targetRoom
	obj_player2.targetDoor = other.targetDoor
	obj_player2.targetRoom = other.targetRoom
	obj_player.image_index = 0
	obj_player.mach2 = 0
	obj_player.secreteye = true
	if (instance_exists(obj_player2) && global.coop == 1)
	{
		if (object_index == obj_player2)
		{
			obj_player1.x = obj_player2.x
			obj_player1.y = obj_player2.y
		}
		if (object_index == obj_player1)
		{
			obj_player2.x = obj_player1.x
			obj_player2.y = obj_player1.y
		}
	}
	other.visited = 1
	with instance_create(x, y, obj_fadeout)
	{
		acttransition = _acttransition
	}
}