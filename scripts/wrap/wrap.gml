function wrap(argument0,argument1,argument2){
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