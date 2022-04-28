//Functions
function parallax_layer(layer_id = noone)
{
	/// @description Returns Parallax Value
	/// @function parallax_layer
	var return_value;
	return_value[0] = 0;
	return_value[1] = 0;
	if layer_id != noone
	{
		var _layer = global.ParallaxMap[? layer_get_name(layer_id)]
		if !is_undefined(_layer)
		{
			var _function = global.ParallaxMap[? layer_get_name(layer_id)]
			return _function();
		}
	}
	return return_value;
}

function add_parallax_function(layer_name, function_id, overwrite = false)
{
	/// @description Adds a new parallax function
	/// @function add_parallax_function
	if overwrite == true || (overwrite == false && is_undefined(global.ParallaxMap[? layer_get_name(layer_name)])) {
		global.ParallaxMap[? layer_name] = function_id;
	}
	return true;
}