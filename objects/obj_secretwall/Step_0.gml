//Player
if place_meeting(x,y,obj_player) || (activated = true && mode != 0)
{
	secretalpha = approach(secretalpha,0,0.15)
	if (ds_list_find_index(global.saveroom, id) == -1)
	{
		ds_list_add(global.saveroom, id)
		activated = true
	}
}
else if mode = 0
{
	secretalpha = approach(secretalpha,1,0.15)
}
	


/*//Layer Alpha	
var bottom_id = layername[0]
var top_id = layername[(layerinst - 1)]
layer_script_begin(bottom_id, scr_secretiledraw_start)
layer_script_end(top_id, scr_secretiledraw_end)


/*
for (var i = 0; i < array_length_1d(layername); i++) 
{

	//layer_script_end(layername[i], scr_secretiledraw_end)
	layer_shader(layername[i], shd_secretalpha)
}