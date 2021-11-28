condition = function()
{
	var player = nearest_player()
	return place_meeting(x,y,player) && player.state = states.firemouth
}
output = function()
{
	with inst_49DD90DD
	{
		activated = true
		sprite_index = spr_secreteye_spawning;
		image_index = 0;
		visible = true;			
	}
}