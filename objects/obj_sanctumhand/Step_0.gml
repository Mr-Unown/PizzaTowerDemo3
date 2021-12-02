var player = nearest_player()
if distance_to_object(player) <= 150 && activated == false && ds_list_find_index(global.saveroom, id) == -1
{
	image_speed = 1
	activated = true
	ds_list_add(global.saveroom,id);
}
if animation_end() && activated == true && image_speed >= 1
{
	image_speed = 0;
}