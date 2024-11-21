function approach(argument0, argument1, argument2) {
	// approach(value, target, amount)
	/// @description Approach the target provided
	/// @param value The value to be changed.
	/// @param target The value targetted.
	/// @param amount The amount to change.
	return argument0 + clamp(argument1 - argument0, -argument2, argument2);
}
function chance(argument0) {
	/// @description Returns true or false depending on RNG
	/// @param percent 
	return argument0 > random(1);

}

function wave(argument0,argument1,argument2,argument3) {
	/// @description Returns a value that will wave back and forth between [from-to] over [duration] seconds
	/// @param from 	
	/// @param to
	/// @param duration
	/// @param offset
	var a4 = (argument1 - argument0) * 0.5;
	return argument0 + a4 + sin((((current_time * 0.001) + argument2 * argument3) / argument2) * (pi*2)) * a4;	
	
}

function wrap(argument0,argument1,argument2) {
/// @description wrap(value, min, max)
/// @function wrap
/// @param value The value to wrap into the bounds
/// @param min Minimum bound, inclusive
/// @param max Maximum bound, inclusive
// Returns the value wrapped to the range [min, max] (min and max can be swapped).
// Calls floor() on reals, but GML's modulo is doing something weird and original_wrap just hangs indefinitely on some values anyways so oh well.

var value = floor(argument0);
var _min = floor(min(argument1, argument2));
var _max = floor(max(argument1, argument2));
var range = _max - _min + 1; // + 1 is because max bound is inclusive

return (((value - _min) % range) + range) % range + _min;
}

function animation_end(value = floor(image_index) ,endpoint = image_number - 1)
{
	/// @description animation_end(value, endpoint)
	/// @function animation_end
	/// @param value The Value to check
	/// @param endpoint The Value considered the end
	return value >= endpoint;
}

function nearest_player(argument0 = x, argument1 = y)
{
	/// @description Returns Nearest Player
	/// @function nearest_player
	/// @param x
	/// @param y
	return (global.coop = false ? obj_player1 : instance_nearest(argument0,argument1,obj_player));
}

function focused_player(inverse = false)
{
	/// @description Returns Focused Player
	/// @function focused_player
	/// @param inverse Returns unfocused Player instead
	var player1 = (global.coop == false ? obj_player1 : (obj_player1.spotlight == false ? obj_player2 : obj_player1));
	var player2 = (global.coop == false ? noone : (obj_player1.spotlight == false ? obj_player1 : obj_player2));
	
	
	return (inverse == false ? player1 : player2);
}




function layer_change_background(original_sprite,new_sprite)
{
	/// @description Changes Background sprite based on the original sprite
	/// @function layer_change_background
	if original_sprite != new_sprite
	{
		var a = layer_get_all();
		for (var i = 0; i < array_length(a); i++;)
		{
			var back_id = layer_background_get_id_fixed(a[i])
			if layer_background_get_sprite(back_id) == original_sprite
				layer_background_sprite(back_id, new_sprite);	
		}
	}
}

function get_all_layer_type(layer_type = layerelementtype_undefined)
{
	/// @description Returns an array of a certain type of layer
	/// @function get_all_layer_type
	var layers, layernum = 0;
	var a = layer_get_all(), i = 0;
	while (i < array_length(a)) 
	{
		var els = layer_get_all_elements(a[i]);
		if (layer_get_element_type(els) == layer_type)
		{
			layers[layernum++] = a[i]
		}
	   i++
	}
	//If no layers are found get out
	if (!layernum)
	    return noone;
	
	return layers;
}


//Important
function rank_checker(rank = global.rank)
{
	/// @description Returns Rank Value
	/// @function rank_checker
	var value = 0;
	switch (rank)
	{
		case "p":
			value = 6;
		break;
		case "s+":
			value = 5;
		break;				
		case "s":
			value = 4;
		break;					
		case "a":
			value = 3;
		break;					
		case "b":
			value = 2;
		break;					
		case "c":
			value = 1;
		break;					
		case "d":
			value = 0;
		break;								
	}
	return value;
}
function sugarysin(argument0, argument1)
{
    return (sin((current_time / (argument1 * 100))) * argument0); 
}
