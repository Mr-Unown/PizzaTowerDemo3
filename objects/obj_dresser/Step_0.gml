/// @description Change Image Index based on current events
if instance_exists(obj_palettechanger)
	image_index = 1
else if !(place_meeting(x,y,_player) && _player.state = states.comingoutdoor)
	image_index = 0