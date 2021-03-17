// You can write your code in this editor
if ds_list_find_index(global.baddieroom, id) == -1
	instance_create(x,y,obj_safeexplosion)
// Inherit the parent event
event_inherited();

