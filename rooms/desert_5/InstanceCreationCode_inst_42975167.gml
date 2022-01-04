condition = function()
{
	var player = nearest_player()
	return distance_to_object(player) <= 2500 && player.state = states.firemouth
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