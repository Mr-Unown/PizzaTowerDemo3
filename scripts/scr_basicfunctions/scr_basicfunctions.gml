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