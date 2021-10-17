/// @Description Checks the Object's State
/// @param object
function scr_transformationcheck(argument0) {
	with argument0
	{
	
	if state == 24 || state == states.newbomb || state == states.frozen || state = states.door || state = states.victory || state = states.Sjumpprep || state = states.Sjump || state = states.backbreaker || state = states.jetpackstart|| state == 27 || state == 18 || state == 25 || state == 15 || state == 11 || state == 13 || state == 14 || state == 86
		return true;
	else
		return false;
	}


}
