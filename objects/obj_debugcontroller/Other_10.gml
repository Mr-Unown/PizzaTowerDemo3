/// @description Togglecollision Better code
var array  = showcollisionarray
var length = array_length_1d(array)
//Start from the end to the start (more optimized)

for (var i = length - 1; i >= 0; --i)
{
	with array[i]
	{
		if (object_index == array[i])
			visible = other.showcollisions		
	}
}