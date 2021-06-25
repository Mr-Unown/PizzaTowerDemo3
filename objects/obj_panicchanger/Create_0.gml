fadealpha = 0
fadein = 0

var layers;
var layernum = 0;
var _depth = 95;
var olddepth = 95;

if layer_exists("Tiles_4")
	layers[layernum++] = layer_get_id("Tiles_4")
if layer_exists("Tiles_3")
	layers[layernum++] = layer_get_id("Tiles_3")
if layer_exists("Tiles_2")
	layers[layernum++] = layer_get_id("Tiles_2")
if layer_exists("Tiles_1")
	layers[layernum++] = layer_get_id("Tiles_1")
if layer_exists("Tiles_BG")
	layers[layernum++] = layer_get_id("Tiles_BG")

for (var i = 0; i < layernum; i++) 
{
	var _depth =  layer_get_depth(layers[i])
    if _depth >= olddepth
	{
		olddepth = _depth
	}
	
}
depth = olddepth + 10