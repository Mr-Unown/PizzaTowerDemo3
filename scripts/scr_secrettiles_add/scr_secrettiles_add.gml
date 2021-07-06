/// @function scr_secrettiles_add(tilelayer1, tilelayer2*, tilelayer3...)
/// @description Passes through Tilelayers for use with obj_secretwall
/// @param tilelayer1 First Tilelayer to Draw
/// @param {optional} tilelayer2 Second Tilelayer




//If the one calling this function is not the secretwall stop.
if object_index != obj_secretwall
	return false;
//Do the thing
for (var i = 0; i < argument_count; ++i) 
{
	var arg = argument[i];
	var layerid = layer_get_id(arg);
	layer_set_visible(layerid,false);
	layername[layerinst++] = layerid;
}
