var player = nearest_player()
if distance_to_object(player) <= 150 && ds_list_find_index(global.saveroom, id) == -1
{
	image_speed = 1
	ds_list_add(global.saveroom,id);
}