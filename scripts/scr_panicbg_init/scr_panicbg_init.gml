function scr_panicbg_init() {
	var layers;
	var layernum = 0;
	if layer_exists("Backgrounds_far")
	    layers[layernum++] = "Backgrounds_far"
	if layer_exists("Backgrounds_far1")
	    layers[layernum++] = "Backgrounds_far1"
	if layer_exists("Backgrounds_scroll")
	    layers[layernum++] = "Backgrounds_scroll"
	if layer_exists("Backgrounds_1")
	    layers[layernum++] = "Backgrounds_1"
	if layer_exists("Backgrounds_H2")
	    layers[layernum++] = "Backgrounds_H2"	
	if layer_exists("Backgrounds_Ground2")
	    layers[layernum++] = "Backgrounds_Ground2"
	if layer_exists("Backgrounds_long2")
	    layers[layernum++] = "Backgrounds_long2"			
	if layer_exists("Backgrounds_sky")
	    layers[layernum++] = "Backgrounds_sky"
	if layer_exists("Backgrounds_H1")
	    layers[layernum++] = "Backgrounds_H1"		
	if layer_exists("Backgrounds_Ground1")
	    layers[layernum++] = "Backgrounds_Ground1"
	if layer_exists("Backgrounds_long")
	    layers[layernum++] = "Backgrounds_long"	
	if layer_exists("Backgrounds_2")
	    layers[layernum++] = "Backgrounds_2"
	if layer_exists("Backgrounds_3")
	    layers[layernum++] = "Backgrounds_3"
	if layer_exists("Backgrounds_sky2")
	    layers[layernum++] = "Backgrounds_sky2"
	if layer_exists("Backgrounds_4")
	    layers[layernum++] = "Backgrounds_4"	
	if (!layernum)
	    return;
	var bottom_id = layer_get_id(layers[0])
	var top_id = layer_get_id(layers[(layernum - 1)])
	layer_script_begin(bottom_id, scr_panicbg_start)
	layer_script_end(top_id, scr_panicbg_end)



}