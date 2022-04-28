condition = function()
{
	var player = nearest_player()
	return (place_meeting(x,y,player) && player.state = states.indiancheese)
}
output = function()
{
	with inst_24247C6C
	{
		activated = true
		sprite_index = spr_secreteye_spawning;
		image_index = 0;
		visible = true;			
	}
}