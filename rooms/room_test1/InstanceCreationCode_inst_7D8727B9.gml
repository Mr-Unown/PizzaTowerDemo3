condition = function()
{
	var player = (global.coop = false ? obj_player1 : instance_nearest(x,y,obj_player));
	return (place_meeting(x,y,player) && player.state = states.freefallland)
}
output = function()
{
	with inst_33E76174
		activated = true
}