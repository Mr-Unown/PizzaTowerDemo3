function layer_tilemap_get_id_fixed(argument0)
{
	/// @description Get Tilemap ID. 
	/// @param layer The Layer name string
	if layer_exists(argument0)
	{
	var els = layer_get_all_elements(argument0);
	var n = array_length(els);
	for (var i = 0; i < n; i++) {
	    var el = els[i];
	    if (layer_get_element_type(el) == layerelementtype_tilemap) {
			return el;
		}
	}
	}
	return -1;
}
function layer_background_get_id_fixed(argument0)
{
	/// @description Get Background ID.
	/// @param layer The Layer name string
	if layer_exists(argument0)
	{
	var els = layer_get_all_elements(argument0);
	var n = array_length(els);
	for (var i = 0; i < n; i++) {
	    var el = els[i];
	    if (layer_get_element_type(el) == layerelementtype_background) {
			return el;
		}
	}
	}
	return -1;
}

