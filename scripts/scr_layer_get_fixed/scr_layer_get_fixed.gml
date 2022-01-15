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
		return -1;
	}
	return -1;
}

/* Gets all layers yeah
var a = layer_get_all();
for (var i = 0; i < array_length_1d(a); i++;)
   {
   if(layer_get_element_type(a[i]) == layerelementtype_tilemap)
        {    show_debug_message(string(layer_get_name(a[i])) + ", " + string(layer_get_element_type(a[i])));
        }
   }