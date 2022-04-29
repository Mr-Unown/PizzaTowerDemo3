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
		for (var i = 0; i < array_length(global.parallax_array); ++i) 
		{
		    if global.parallax_array[i]._layer_name == layer_get_name(layer_id)
			{
				var _function = global.parallax_array[i]._function_id
				return _function();
			}
		}
	}
	return return_value;
}

function add_parallax_function(layer_name,function_id, overwrite = false)
{
	/// @description Adds a new parallax function
	/// @function add_parallax_function
	var array_pos = 0;
	for (var i = 0; i < array_length(global.parallax_array); ++i) 
	{
		if global.parallax_array[i]._layer_name == layer_name
		{
			if overwrite == true
				array_pos = i;
			else
				return false;
		}
	}
	if overwrite == false
		array_pos = global.parallax_arraynumber++;
		
	global.parallax_array[array_pos] = 
	{
		_layer_name : layer_name,	
		_function_id : function_id
	}
	return true;
}