i = 0
target[0] = noone
unid = 0;
is_exit_portal = false;
exit_id = noone;

add_target = function(object,xoffset = 0,yoffset = 0)
{
	/// @description Adds an object that can use it
	/// @function add_target
	/// @param object
	/// @param xoffset
	/// @param yoffset
	targets[i++] = 
	{
		_object : object,
		_xoffset : xoffset,
		_yoffset : yoffset
	}
	
}
//Default
//add_target(obj_player,sprite_width/2,sprite_height/2);
//add_target(obj_dashpad);

/*
targets[0] = {
	content : obj_player,
	xoffset : sprite_width/2,
	yoffset : sprite_height/2
	
}
targets[1] = {
	content : obj_dashpad,
	xoffset : 0,
	yoffset : 0
	
}*/
//This is an example but I should make this a function smh

