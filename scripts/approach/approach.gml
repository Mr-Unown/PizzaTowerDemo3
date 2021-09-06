function approach(argument0, argument1, argument2) {
	// approach(value, target, amount)
	/// @description Approach the target provided
	/// @param value The value to be changed.
	/// @param target The value targetted.
	/// @param amount The amount to change.
	return argument0 + clamp(argument1 - argument0, -argument2, argument2);


}
