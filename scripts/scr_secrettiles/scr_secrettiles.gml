if object_index != obj_secretwall
	return;
	
var arg = argument0;
var layerid = layer_get_id(arg);
layer_set_visible(layerid,false)
layername[layerinst++] = layerid;